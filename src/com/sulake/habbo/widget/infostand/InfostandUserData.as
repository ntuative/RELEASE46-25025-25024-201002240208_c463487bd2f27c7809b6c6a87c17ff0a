package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var var_2239:String = "";
      
      private var var_2231:int = 0;
      
      private var _userName:String = "";
      
      private var var_248:Array;
      
      private var _type:String;
      
      private var _userId:int = 0;
      
      private var var_2234:int = 0;
      
      private var var_875:int = 0;
      
      private var var_1034:int = 0;
      
      private var var_500:int = 0;
      
      public function InfostandUserData()
      {
         var_248 = [];
         super();
      }
      
      public function get groupId() : int
      {
         return var_1034;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2234 = param1;
      }
      
      public function isBot() : Boolean
      {
         return type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get userRoomId() : int
      {
         return var_2234;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set userId(param1:int) : void
      {
         _userId = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2231;
      }
      
      public function get petRespectLeft() : int
      {
         return var_500;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2239;
      }
      
      public function set badges(param1:Array) : void
      {
         var_248 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_875 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2231 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_875;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_500 = param1;
      }
      
      public function set userName(param1:String) : void
      {
         _userName = param1;
      }
      
      public function get badges() : Array
      {
         return var_248.slice();
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userId = param1.webID;
         userName = param1.name;
         badges = param1.badges;
         groupId = param1.groupId;
         groupBadgeId = param1.groupBadgeId;
         respectLeft = param1.respectLeft;
         carryItem = param1.carryItem;
         userRoomId = param1.userRoomId;
         type = param1.type;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1034 = param1;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2239 = param1;
      }
   }
}
