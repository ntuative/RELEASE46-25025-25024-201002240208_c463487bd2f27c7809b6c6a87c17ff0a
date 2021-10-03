package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputDisplayEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_684:String = "RWWCIDE_CHAT_INPUT_SETUP";
       
      
      private var var_1978:Boolean;
      
      public function RoomWidgetChatInputDisplayEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         var_1978 = param2;
         super(param1,param3,param4);
      }
      
      public function get allowPaste() : Boolean
      {
         return var_1978;
      }
   }
}
