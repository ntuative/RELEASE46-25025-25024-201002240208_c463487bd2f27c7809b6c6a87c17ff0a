package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1339:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1319:int;
      
      private var var_1045:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1045 = param2;
         var_1319 = param3;
      }
      
      public function get classId() : int
      {
         return var_1319;
      }
      
      public function get itemType() : String
      {
         return var_1045;
      }
   }
}
