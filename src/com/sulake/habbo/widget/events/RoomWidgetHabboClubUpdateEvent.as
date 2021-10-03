package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_187:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2053:Boolean = false;
      
      private var var_2051:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_2054:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_187,param5,param6);
         var_2054 = param1;
         var_2052 = param2;
         var_2051 = param3;
         var_2053 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2051;
      }
      
      public function get periodsLeft() : int
      {
         return var_2052;
      }
      
      public function get daysLeft() : int
      {
         return var_2054;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2053;
      }
   }
}
