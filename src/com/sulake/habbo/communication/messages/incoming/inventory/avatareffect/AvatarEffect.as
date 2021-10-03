package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2143:int;
      
      private var var_1170:int;
      
      private var _type:int;
      
      private var var_2144:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2144;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2143 = param1;
      }
      
      public function get duration() : int
      {
         return var_1170;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2144 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1170 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2143;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
