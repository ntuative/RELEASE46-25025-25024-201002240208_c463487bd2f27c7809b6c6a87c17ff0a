package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1725:int;
      
      private var var_1751:int;
      
      private var var_1792:int;
      
      private var _type:int;
      
      private var var_1154:int = -1;
      
      private var var_1790:int;
      
      private var _nutrition:int;
      
      private var var_1793:int;
      
      private var _energy:int;
      
      private var var_1816:int;
      
      private var var_1791:int;
      
      private var var_1795:int;
      
      private var var_1750:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1796:Boolean;
      
      private var _name:String = "";
      
      private var var_1753:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1796;
      }
      
      public function get level() : int
      {
         return var_1725;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1793;
      }
      
      public function get id() : int
      {
         return var_1154;
      }
      
      public function get nutritionMax() : int
      {
         return var_1792;
      }
      
      public function get ownerId() : int
      {
         return var_1753;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1154 = param1.id;
         _type = param1.petType;
         var_1816 = param1.petRace;
         _image = param1.image;
         var_1796 = param1.isOwnPet;
         var_1753 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1725 = param1.level;
         var_1790 = param1.levelMax;
         var_1751 = param1.experience;
         var_1793 = param1.experienceMax;
         _energy = param1.energy;
         var_1791 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1792 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1795 = param1.roomIndex;
         var_1750 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1795;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1791;
      }
      
      public function get levelMax() : int
      {
         return var_1790;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1816;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1751;
      }
      
      public function get age() : int
      {
         return var_1750;
      }
   }
}
