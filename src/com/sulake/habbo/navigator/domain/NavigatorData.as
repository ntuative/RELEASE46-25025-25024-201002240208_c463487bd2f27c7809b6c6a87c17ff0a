package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1395:int = 10;
       
      
      private var var_1388:NavigatorSettingsMessageParser;
      
      private var var_1123:int;
      
      private var var_1646:int;
      
      private var var_1642:Boolean;
      
      private var var_942:Array;
      
      private var var_758:Dictionary;
      
      private var var_943:Array;
      
      private var var_2279:int;
      
      private var var_1647:int;
      
      private var var_1643:int;
      
      private var var_1641:int;
      
      private var var_536:PublicRoomShortData;
      
      private var var_373:RoomEventData;
      
      private var var_120:MsgWithRequestId;
      
      private var var_1644:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1645:Boolean;
      
      private var var_187:GuestRoomData;
      
      private var var_630:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_942 = new Array();
         var_943 = new Array();
         var_758 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1646;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1645;
      }
      
      public function startLoading() : void
      {
         this.var_630 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1645 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_373 != null)
         {
            var_373.dispose();
         }
         var_373 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_120 != null && var_120 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_120 != null && var_120 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_120 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_187;
      }
      
      public function get allCategories() : Array
      {
         return var_942;
      }
      
      public function onRoomExit() : void
      {
         if(var_373 != null)
         {
            var_373.dispose();
            var_373 = null;
         }
         if(var_536 != null)
         {
            var_536.dispose();
            var_536 = null;
         }
         if(var_187 != null)
         {
            var_187.dispose();
            var_187 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_630 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1388;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_630 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_536 = null;
         var_187 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_536 = param1.publicSpace;
            var_373 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2279 = param1.limit;
         this.var_1123 = param1.favouriteRoomIds.length;
         this.var_758 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_758[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_120 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_536;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1642;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_120 = param1;
         var_630 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_187 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_630;
      }
      
      public function get visibleCategories() : Array
      {
         return var_943;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_942 = param1;
         var_943 = new Array();
         for each(_loc2_ in var_942)
         {
            if(_loc2_.visible)
            {
               var_943.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1647;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1641;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1388 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_120 == null)
         {
            return;
         }
         var_120.dispose();
         var_120 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_373;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_758[param1] = !!param2 ? "yes" : null;
         var_1123 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_120 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1643;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_120 != null && var_120 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1642 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1647 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1644 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_187 != null)
         {
            var_187.dispose();
         }
         var_187 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_187 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1388.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1123 >= var_2279;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1644;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_187 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1646 = param1;
      }
   }
}
