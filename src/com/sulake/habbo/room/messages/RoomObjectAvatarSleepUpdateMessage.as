package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarSleepUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1883:Boolean;
      
      public function RoomObjectAvatarSleepUpdateMessage(param1:Boolean = false)
      {
         super();
         var_1883 = param1;
      }
      
      public function get isSleeping() : Boolean
      {
         return var_1883;
      }
   }
}
