package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_503:String = "RWFRM_ACCEPT";
      
      public static const const_516:String = "RWFRM_DECLINE";
       
      
      private var var_1055:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         var_1055 = param2;
      }
      
      public function get requestId() : int
      {
         return var_1055;
      }
   }
}
