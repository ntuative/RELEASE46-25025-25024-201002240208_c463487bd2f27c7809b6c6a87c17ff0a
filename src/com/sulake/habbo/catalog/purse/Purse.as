package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1612:int = 0;
      
      private var var_1981:int = 0;
      
      private var var_1980:int = 0;
      
      private var var_1611:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1981;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1981 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1612 = param1;
      }
      
      public function get credits() : int
      {
         return var_1980;
      }
      
      public function get clubDays() : int
      {
         return var_1612;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1611 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1611;
      }
   }
}
