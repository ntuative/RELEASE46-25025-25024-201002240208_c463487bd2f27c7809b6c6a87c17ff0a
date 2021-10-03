package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_627:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1034:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_627);
         var_1034 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1034;
      }
   }
}
