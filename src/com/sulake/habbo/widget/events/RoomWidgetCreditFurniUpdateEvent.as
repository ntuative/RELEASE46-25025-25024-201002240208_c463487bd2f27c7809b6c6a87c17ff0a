package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_562:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_154:int;
      
      private var var_2218:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2218 = param3;
         var_154 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_2218;
      }
      
      public function get objectId() : int
      {
         return var_154;
      }
   }
}