package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_553:String = "Rectangle";
      
      public static const const_57:String = "Boolean";
      
      public static const const_573:String = "Number";
      
      public static const const_61:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_667:String = "Point";
      
      public static const const_805:String = "Array";
      
      public static const const_1011:String = "uint";
      
      public static const const_478:String = "hex";
      
      public static const const_1010:String = "Map";
       
      
      private var var_563:String;
      
      private var var_170:Object;
      
      private var var_2301:Boolean;
      
      private var _type:String;
      
      private var var_1882:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_563 = param1;
         var_170 = param2;
         _type = param3;
         var_1882 = param4;
         var_2301 = param3 == const_1010 || param3 == const_805 || param3 == const_667 || param3 == const_553;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_478:
               return "0x" + uint(var_170).toString(16);
            case const_57:
               return Boolean(var_170) == true ? "true" : "false";
            case const_667:
               return "Point(" + Point(var_170).x + ", " + Point(var_170).y + ")";
            case const_553:
               return "Rectangle(" + Rectangle(var_170).x + ", " + Rectangle(var_170).y + ", " + Rectangle(var_170).width + ", " + Rectangle(var_170).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_1010:
               _loc3_ = var_170 as Map;
               _loc1_ = "<var key=\"" + var_563 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_805:
               _loc4_ = var_170 as Array;
               _loc1_ = "<var key=\"" + var_563 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_667:
               _loc5_ = var_170 as Point;
               _loc1_ = "<var key=\"" + var_563 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_553:
               _loc6_ = var_170 as Rectangle;
               _loc1_ = "<var key=\"" + var_563 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_61 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_478:
               _loc1_ = "<var key=\"" + var_563 + "\" value=\"" + "0x" + uint(var_170).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_563 + "\" value=\"" + var_170 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_170;
      }
      
      public function get valid() : Boolean
      {
         return var_1882;
      }
      
      public function get key() : String
      {
         return var_563;
      }
   }
}
