package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2209:int;
      
      private var var_2013:int;
      
      private var var_2207:Boolean;
      
      private var var_2210:Boolean;
      
      private var var_2208:Array;
      
      private var var_2112:Boolean;
      
      private var var_1149:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_612:Array;
      
      private var var_1148:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_2013;
      }
      
      public function get description() : String
      {
         return var_1148;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2210;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2209;
      }
      
      public function set description(param1:String) : void
      {
         var_1148 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2112 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2209 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1149;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2208;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2112;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2013 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2207 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_612 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2208 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1149 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2207;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2210 = param1;
      }
   }
}
