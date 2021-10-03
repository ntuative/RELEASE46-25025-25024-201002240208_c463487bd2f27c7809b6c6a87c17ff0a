package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_230:uint = 1;
      
      public static const const_371:uint = 0;
      
      public static const const_968:uint = 8;
      
      public static const const_270:uint = 4;
      
      public static const const_464:uint = 2;
       
      
      private var var_403:uint;
      
      private var var_1601:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1602:uint;
      
      private var var_98:Rectangle;
      
      private var var_612:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_98 = param3;
         _color = param4;
         var_403 = param5;
         var_1601 = param6;
         var_1602 = param7;
         var_612 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1601;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_403;
      }
      
      public function get scaleV() : uint
      {
         return var_1602;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_98 = null;
         var_612 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_98;
      }
   }
}
