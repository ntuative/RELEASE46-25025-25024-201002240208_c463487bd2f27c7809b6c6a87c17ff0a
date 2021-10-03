package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      private var var_223:int = 0;
      
      private var var_1775:int = 0;
      
      private var var_1779:Number = 0;
      
      private var var_1776:Number = 0;
      
      private var var_1774:Number = 0;
      
      private var var_1778:Number = 0;
      
      private var var_1777:Boolean = false;
      
      private var var_86:Number = 0;
      
      private var _id:int = 0;
      
      private var var_184:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_184 = [];
         super();
         _id = param1;
         var_86 = param2;
         _y = param3;
         var_85 = param4;
         var_1778 = param5;
         var_223 = param6;
         var_1775 = param7;
         var_1779 = param8;
         var_1776 = param9;
         var_1774 = param10;
         var_1777 = param11;
         var_184 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get dir() : int
      {
         return var_223;
      }
      
      public function get localZ() : Number
      {
         return var_1778;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1777;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1775;
      }
      
      public function get targetX() : Number
      {
         return var_1779;
      }
      
      public function get targetY() : Number
      {
         return var_1776;
      }
      
      public function get targetZ() : Number
      {
         return var_1774;
      }
      
      public function get x() : Number
      {
         return var_86;
      }
      
      public function get actions() : Array
      {
         return var_184.slice();
      }
   }
}
