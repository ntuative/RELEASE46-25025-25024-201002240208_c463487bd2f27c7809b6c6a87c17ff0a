package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_106:int = 0;
      
      public static const const_126:int = 1;
      
      public static const const_95:int = 2;
      
      public static const const_658:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1223:int = 0;
      
      private var var_2048:String = "";
      
      private var var_198:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_198 = param2;
         var_1223 = param3;
         var_2048 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2048;
      }
      
      public function get chatType() : int
      {
         return var_1223;
      }
      
      public function get text() : String
      {
         return var_198;
      }
   }
}
