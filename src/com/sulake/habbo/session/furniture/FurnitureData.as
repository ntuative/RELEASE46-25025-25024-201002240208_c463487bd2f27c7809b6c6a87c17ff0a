package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1538:String = "e";
      
      public static const const_1505:String = "i";
      
      public static const const_1463:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2046:int;
      
      private var var_1316:Array;
      
      private var var_2047:int;
      
      private var var_2045:int;
      
      private var var_2043:int;
      
      private var _name:String;
      
      private var var_2044:int;
      
      private var var_1148:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2046 = param4;
         var_2044 = param5;
         var_2047 = param6;
         var_2045 = param7;
         var_2043 = param8;
         var_1316 = param9;
         _title = param10;
         var_1148 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_2045;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2043;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2044;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2046;
      }
      
      public function get tileSizeX() : int
      {
         return var_2047;
      }
      
      public function get colours() : Array
      {
         return var_1316;
      }
      
      public function get description() : String
      {
         return var_1148;
      }
   }
}
