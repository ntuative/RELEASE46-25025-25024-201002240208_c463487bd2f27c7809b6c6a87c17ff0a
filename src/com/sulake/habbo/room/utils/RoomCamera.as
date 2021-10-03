package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_341:Number = 0.5;
      
      private static const const_757:int = 3;
      
      private static const const_1079:Number = 1;
       
      
      private var var_1943:Boolean = false;
      
      private var var_1946:Boolean = false;
      
      private var var_1006:int = 0;
      
      private var var_262:Vector3d = null;
      
      private var var_1941:int = 0;
      
      private var var_1942:int = 0;
      
      private var var_1940:Boolean = false;
      
      private var var_1945:int = -2;
      
      private var var_1938:Boolean = false;
      
      private var var_1947:int = 0;
      
      private var var_1939:int = -1;
      
      private var var_399:Vector3d = null;
      
      private var var_1944:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1941;
      }
      
      public function get targetId() : int
      {
         return var_1939;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1947 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1941 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1943 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1939 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1946 = param1;
      }
      
      public function dispose() : void
      {
         var_399 = null;
         var_262 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_399 == null)
         {
            var_399 = new Vector3d();
         }
         var_399.assign(param1);
         var_1006 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1945;
      }
      
      public function get screenHt() : int
      {
         return var_1944;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1942 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_262;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1944 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1947;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1943;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1946;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_399 != null && var_262 != null)
         {
            ++var_1006;
            _loc2_ = Vector3d.dif(var_399,var_262);
            if(_loc2_.length <= const_341)
            {
               var_262 = var_399;
               var_399 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_341 * (const_757 + 1))
               {
                  _loc2_.mul(const_341);
               }
               else if(var_1006 <= const_757)
               {
                  _loc2_.mul(const_341);
               }
               else
               {
                  _loc2_.mul(const_1079);
               }
               var_262 = Vector3d.sum(var_262,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1940 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1942;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1938 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1945 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_262 != null)
         {
            return;
         }
         var_262 = new Vector3d();
         var_262.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1940;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1938;
      }
   }
}
