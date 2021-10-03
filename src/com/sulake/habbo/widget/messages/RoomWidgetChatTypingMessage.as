package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_699:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_506:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_699);
         var_506 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_506;
      }
   }
}
