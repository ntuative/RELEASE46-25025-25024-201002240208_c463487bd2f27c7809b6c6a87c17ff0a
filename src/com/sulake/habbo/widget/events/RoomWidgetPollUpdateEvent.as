package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_105:String = "RWPUW_CONTENT";
      
      public static const const_104:String = "RWPUW_OFFER";
      
      public static const const_63:String = "RWPUW_ERROR";
       
      
      private var var_1068:Array = null;
      
      private var var_1334:String = "";
      
      private var var_1341:String;
      
      private var var_1335:String = "";
      
      private var var_1067:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_1068;
      }
      
      public function get startMessage() : String
      {
         return var_1334;
      }
      
      public function get summary() : String
      {
         return var_1341;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1334 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1067 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1341 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1067;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1335 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1335;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1068 = param1;
      }
   }
}
