package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1608:Boolean = false;
      
      private var var_1609:int = 0;
      
      private var var_1612:int = 0;
      
      private var var_1610:int = 0;
      
      private var var_1466:int = 0;
      
      private var var_1611:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1466 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1609;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1608;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1608 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1609 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1612 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1466;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1610 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1612;
      }
      
      public function get pixelBalance() : int
      {
         return var_1610;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1611 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1611;
      }
   }
}
