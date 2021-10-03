package com.sulake.habbo.widget.events
{
   public class RoomWidgetWaveUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_672:String = "RWUE_WAVE";
       
      
      public function RoomWidgetWaveUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_672,param1,param2);
      }
   }
}
