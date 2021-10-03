package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1725:int;
      
      private var var_1754:int;
      
      private var var_1751:int;
      
      private var var_1792:int;
      
      private var _nutrition:int;
      
      private var var_1154:int;
      
      private var var_1790:int;
      
      private var var_1793:int;
      
      private var _energy:int;
      
      private var var_1750:int;
      
      private var var_1791:int;
      
      private var _ownerName:String;
      
      private var var_1753:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1725;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1754 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function get petId() : int
      {
         return var_1154;
      }
      
      public function get experienceMax() : int
      {
         return var_1793;
      }
      
      public function get nutritionMax() : int
      {
         return var_1792;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1790 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1753;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1154 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1791;
      }
      
      public function get respect() : int
      {
         return var_1754;
      }
      
      public function get levelMax() : int
      {
         return var_1790;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1793 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1751 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1792 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1753 = param1;
      }
      
      public function get experience() : int
      {
         return var_1751;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1791 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1750 = param1;
      }
      
      public function get age() : int
      {
         return var_1750;
      }
   }
}
