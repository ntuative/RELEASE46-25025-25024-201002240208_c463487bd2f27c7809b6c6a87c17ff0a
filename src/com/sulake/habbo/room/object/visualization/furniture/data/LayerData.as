package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_380:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_424:int = 0;
      
      public static const const_960:int = 2;
      
      public static const const_884:int = 1;
      
      public static const const_628:Boolean = false;
      
      public static const const_666:String = "";
      
      public static const const_466:int = 0;
      
      public static const const_448:int = 0;
      
      public static const const_427:int = 0;
       
      
      private var var_1903:int = 0;
      
      private var var_1813:String = "";
      
      private var var_1572:int = 0;
      
      private var var_1904:int = 0;
      
      private var var_1902:Number = 0;
      
      private var var_1872:int = 255;
      
      private var var_1901:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1903;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1572 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1902;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1904 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1903 = param1;
      }
      
      public function get tag() : String
      {
         return var_1813;
      }
      
      public function get alpha() : int
      {
         return var_1872;
      }
      
      public function get ink() : int
      {
         return var_1572;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1902 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1904;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1901 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1901;
      }
      
      public function set tag(param1:String) : void
      {
         var_1813 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1872 = param1;
      }
   }
}
