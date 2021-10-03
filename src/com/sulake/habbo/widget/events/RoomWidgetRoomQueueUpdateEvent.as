package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_465:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_305:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_878:int;
      
      private var var_263:Boolean;
      
      private var var_1674:Boolean;
      
      private var var_1403:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_878 = param2;
         var_1674 = param3;
         var_263 = param4;
         var_1403 = param5;
      }
      
      public function get position() : int
      {
         return var_878;
      }
      
      public function get isActive() : Boolean
      {
         return var_263;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1403;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1674;
      }
   }
}
