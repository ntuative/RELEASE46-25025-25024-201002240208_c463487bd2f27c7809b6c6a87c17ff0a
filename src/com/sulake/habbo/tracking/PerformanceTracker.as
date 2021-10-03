package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1422:GarbageMonitor = null;
      
      private var var_1165:int = 0;
      
      private var var_1126:Boolean = false;
      
      private var var_1657:String = "";
      
      private var var_1423:String = "";
      
      private var var_326:Number = 0;
      
      private var var_1166:int = 10;
      
      private var var_2288:Array;
      
      private var var_617:int = 0;
      
      private var var_1164:int = 60;
      
      private var var_977:int = 0;
      
      private var var_976:int = 0;
      
      private var var_1659:String = "";
      
      private var var_1820:Number = 0;
      
      private var var_1168:int = 1000;
      
      private var var_1819:Boolean = true;
      
      private var var_1821:Number = 0.15;
      
      private var var_174:IHabboConfigurationManager = null;
      
      private var var_1655:String = "";
      
      private var var_1167:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2288 = [];
         super();
         var_1423 = Capabilities.version;
         var_1657 = Capabilities.os;
         var_1126 = Capabilities.isDebugger;
         var_1655 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1422 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1165 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1422.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1422.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_326;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1164 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1423;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_976;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1168)
         {
            ++var_977;
            _loc3_ = true;
         }
         else
         {
            ++var_617;
            if(var_617 <= 1)
            {
               var_326 = param1;
            }
            else
            {
               _loc4_ = Number(var_617);
               var_326 = var_326 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1165 > var_1164 * 1000 && var_1167 < var_1166)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_326);
            _loc5_ = true;
            if(var_1819 && var_1167 > 0)
            {
               _loc6_ = differenceInPercents(var_1820,var_326);
               if(_loc6_ < var_1821)
               {
                  _loc5_ = false;
               }
            }
            var_1165 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1820 = var_326;
               if(sendReport())
               {
                  ++var_1167;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1166 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1168 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1655,var_1423,var_1657,var_1659,var_1126,_loc4_,_loc3_,var_976,var_326,var_977);
            _connection.send(_loc1_);
            var_976 = 0;
            var_326 = 0;
            var_617 = 0;
            var_977 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_174 = param1;
         var_1164 = int(var_174.getKey("performancetest.interval","60"));
         var_1168 = int(var_174.getKey("performancetest.slowupdatelimit","1000"));
         var_1166 = int(var_174.getKey("performancetest.reportlimit","10"));
         var_1821 = Number(var_174.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1819 = Boolean(int(var_174.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
