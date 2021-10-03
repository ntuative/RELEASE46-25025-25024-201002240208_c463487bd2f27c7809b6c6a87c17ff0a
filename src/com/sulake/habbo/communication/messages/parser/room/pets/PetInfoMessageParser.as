package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1750:int;
      
      private var var_530:String;
      
      private var var_1725:int;
      
      private var var_1754:int;
      
      private var var_1751:int;
      
      private var var_1747:int;
      
      private var _nutrition:int;
      
      private var var_1154:int;
      
      private var var_1748:int;
      
      private var var_1749:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1753:int;
      
      private var var_1752:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1747;
      }
      
      public function flush() : Boolean
      {
         var_1154 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1748;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1749;
      }
      
      public function get maxNutrition() : int
      {
         return var_1752;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1754;
      }
      
      public function get petId() : int
      {
         return var_1154;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1154 = param1.readInteger();
         _name = param1.readString();
         var_1725 = param1.readInteger();
         var_1748 = param1.readInteger();
         var_1751 = param1.readInteger();
         var_1749 = param1.readInteger();
         _energy = param1.readInteger();
         var_1747 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1752 = param1.readInteger();
         var_530 = param1.readString();
         var_1754 = param1.readInteger();
         var_1753 = param1.readInteger();
         var_1750 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1751;
      }
      
      public function get ownerId() : int
      {
         return var_1753;
      }
      
      public function get age() : int
      {
         return var_1750;
      }
   }
}
