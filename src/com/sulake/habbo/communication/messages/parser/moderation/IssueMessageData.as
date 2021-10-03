package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_1234:int = 3;
      
      public static const const_428:int = 2;
       
      
      private var var_1928:int;
      
      private var var_1807:int;
      
      private var var_1927:int;
      
      private var var_1675:int;
      
      private var var_33:int;
      
      private var var_404:int;
      
      private var var_1261:int;
      
      private var var_1771:int;
      
      private var var_1030:int;
      
      private var _roomResources:String;
      
      private var var_1929:int;
      
      private var var_1931:int;
      
      private var var_1926:String;
      
      private var var_1772:String;
      
      private var var_1933:int = 0;
      
      private var var_1264:String;
      
      private var _message:String;
      
      private var var_1878:int;
      
      private var var_1930:String;
      
      private var var_1149:int;
      
      private var var_672:String;
      
      private var var_1932:String;
      
      private var var_1463:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1030 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1933 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1931;
      }
      
      public function set roomName(param1:String) : void
      {
         var_672 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1929 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_672;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1675 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1807;
      }
      
      public function get priority() : int
      {
         return var_1928 + var_1933;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1771 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1772;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1463) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1149;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1931 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1261;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1926 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1929;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1675;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1932 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1264 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1771;
      }
      
      public function set priority(param1:int) : void
      {
         var_1928 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1926;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1927 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1772 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1878 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1264;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1927;
      }
      
      public function set flatId(param1:int) : void
      {
         var_404 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1149 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1463 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1878;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1930 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1463;
      }
      
      public function get reportedUserId() : int
      {
         return var_1030;
      }
      
      public function get flatId() : int
      {
         return var_404;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1932;
      }
      
      public function get reporterUserName() : String
      {
         return var_1930;
      }
   }
}
