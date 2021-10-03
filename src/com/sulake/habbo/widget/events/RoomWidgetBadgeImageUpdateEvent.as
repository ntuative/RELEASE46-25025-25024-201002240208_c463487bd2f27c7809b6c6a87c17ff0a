package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_637:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1704:BitmapData;
      
      private var var_1705:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_637,param3,param4);
         var_1705 = param1;
         var_1704 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_1704;
      }
      
      public function get badgeID() : String
      {
         return var_1705;
      }
   }
}
