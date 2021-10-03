package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1715:Boolean = false;
      
      private var var_1718:Boolean = false;
      
      private var var_2182:String = "";
      
      private var _type:String = "";
      
      private var var_1716:Boolean = false;
      
      private var var_2185:Number = 0;
      
      private var var_2212:Number = 0;
      
      private var var_2213:Number = 0;
      
      private var var_2211:String = "";
      
      private var var_2186:Number = 0;
      
      private var var_1717:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2211 = param2;
         var_2182 = param3;
         var_2212 = param4;
         var_2213 = param5;
         var_2185 = param6;
         var_2186 = param7;
         var_1717 = param8;
         var_1718 = param9;
         var_1716 = param10;
         var_1715 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1717;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1715;
      }
      
      public function get localX() : Number
      {
         return var_2185;
      }
      
      public function get localY() : Number
      {
         return var_2186;
      }
      
      public function get canvasId() : String
      {
         return var_2211;
      }
      
      public function get altKey() : Boolean
      {
         return var_1718;
      }
      
      public function get spriteTag() : String
      {
         return var_2182;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2212;
      }
      
      public function get screenY() : Number
      {
         return var_2213;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1716;
      }
   }
}
