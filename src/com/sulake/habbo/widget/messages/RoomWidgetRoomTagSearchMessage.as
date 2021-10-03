package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_649:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1813:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_649);
         var_1813 = param1;
      }
      
      public function get tag() : String
      {
         return var_1813;
      }
   }
}
