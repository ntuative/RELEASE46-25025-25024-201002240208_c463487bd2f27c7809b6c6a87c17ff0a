package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1194:String = "F";
      
      public static const const_949:String = "M";
       
      
      private var var_86:Number = 0;
      
      private var var_530:String = "";
      
      private var var_1640:int = 0;
      
      private var var_1636:String = "";
      
      private var var_1635:int = 0;
      
      private var var_1637:int = 0;
      
      private var var_1639:String = "";
      
      private var var_1285:String = "";
      
      private var _id:int = 0;
      
      private var var_186:Boolean = false;
      
      private var var_223:int = 0;
      
      private var var_1634:String = "";
      
      private var _name:String = "";
      
      private var var_1638:int = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_223;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_186)
         {
            var_223 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_186)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1640;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_186)
         {
            var_1635 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1634;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_186)
         {
            var_1639 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_186)
         {
            var_1634 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_186)
         {
            var_1637 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_186)
         {
            var_530 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_186)
         {
            var_1640 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_186)
         {
            var_1285 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1635;
      }
      
      public function get groupID() : String
      {
         return var_1639;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_186)
         {
            var_1638 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_186)
         {
            var_1636 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_186 = true;
      }
      
      public function get sex() : String
      {
         return var_1285;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get webID() : int
      {
         return var_1638;
      }
      
      public function get custom() : String
      {
         return var_1636;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_186)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_186)
         {
            var_85 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_186)
         {
            var_86 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_86;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1637;
      }
   }
}
