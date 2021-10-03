package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2257:Boolean;
      
      protected var var_1401:Number;
      
      protected var var_2254:Boolean;
      
      protected var _type:int;
      
      protected var var_2256:Boolean;
      
      protected var var_1665:int;
      
      protected var var_2255:Boolean;
      
      protected var var_1370:String;
      
      protected var var_1732:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1668:String;
      
      protected var var_1730:Boolean;
      
      protected var _category:int;
      
      protected var var_1735:int;
      
      protected var var_2258:int;
      
      protected var var_1734:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1730 = param5;
         var_2255 = param6;
         var_2257 = param7;
         var_2254 = param8;
         var_1370 = param9;
         var_1401 = param10;
         var_2258 = param11;
         var_1734 = param12;
         var_1735 = param13;
         var_1732 = param14;
         var_1668 = param15;
         var_1665 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2256;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1401;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2256 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1665;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2254;
      }
      
      public function get slotId() : String
      {
         return var_1668;
      }
      
      public function get expires() : int
      {
         return var_2258;
      }
      
      public function get creationYear() : int
      {
         return var_1732;
      }
      
      public function get creationDay() : int
      {
         return var_1734;
      }
      
      public function get stuffData() : String
      {
         return var_1370;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2255;
      }
      
      public function get groupable() : Boolean
      {
         return var_1730;
      }
      
      public function get creationMonth() : int
      {
         return var_1735;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2257;
      }
   }
}
