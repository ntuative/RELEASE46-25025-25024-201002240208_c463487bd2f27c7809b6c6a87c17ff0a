package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_85:Number = 0;
      
      private var _data:String = "";
      
      private var var_1401:int = 0;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2184:Boolean = false;
      
      private var var_2374:String = "";
      
      private var _id:int = 0;
      
      private var var_186:Boolean = false;
      
      private var var_223:String = "";
      
      private var var_2188:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_2185:int = 0;
      
      private var var_2186:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2184 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_186)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2184;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_186)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_223;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_186)
         {
            var_2185 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_186)
         {
            var_2188 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_186)
         {
            var_2187 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_186)
         {
            var_223 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_186)
         {
            var_2186 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_186)
         {
            var_33 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2185;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_186)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2188;
      }
      
      public function get wallY() : Number
      {
         return var_2187;
      }
      
      public function get localY() : Number
      {
         return var_2186;
      }
      
      public function setReadOnly() : void
      {
         var_186 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_186)
         {
            var_85 = param1;
         }
      }
   }
}
