package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_977:int = 0;
      
      private var var_1126:int = 0;
      
      private var var_1657:String = "";
      
      private var var_976:int = 0;
      
      private var var_1659:String = "";
      
      private var var_1654:int = 0;
      
      private var var_1423:String = "";
      
      private var var_1660:int = 0;
      
      private var var_1658:int = 0;
      
      private var var_1655:String = "";
      
      private var var_1656:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1660 = param1;
         var_1655 = param2;
         var_1423 = param3;
         var_1657 = param4;
         var_1659 = param5;
         if(param6)
         {
            var_1126 = 1;
         }
         else
         {
            var_1126 = 0;
         }
         var_1654 = param7;
         var_1658 = param8;
         var_976 = param9;
         var_1656 = param10;
         var_977 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1660,var_1655,var_1423,var_1657,var_1659,var_1126,var_1654,var_1658,var_976,var_1656,var_977];
      }
      
      public function dispose() : void
      {
      }
   }
}
