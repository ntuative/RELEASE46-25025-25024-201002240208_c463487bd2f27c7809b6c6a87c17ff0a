package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_597:String = "RWFIUE_FURNI";
       
      
      private var var_1152:Boolean = false;
      
      private var _id:int = 0;
      
      private var var_1351:int = -1;
      
      private var var_1150:Boolean = false;
      
      private var var_2024:Boolean = false;
      
      private var _category:int = 0;
      
      private var var_2026:Boolean = false;
      
      private var var_2025:Boolean = false;
      
      private var _name:String = "";
      
      private var _image:BitmapData = null;
      
      private var var_1148:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         var_1152 = param1;
      }
      
      public function get description() : String
      {
         return var_1148;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         var_2026 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         var_2025 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return var_2024;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get isWallItem() : Boolean
      {
         return var_2025;
      }
      
      public function get isRoomController() : Boolean
      {
         return var_1152;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set expiration(param1:int) : void
      {
         var_1351 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return var_2026;
      }
      
      public function get expiration() : int
      {
         return var_1351;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1150 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1150;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         var_2024 = param1;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set category(param1:int) : void
      {
         _category = param1;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set description(param1:String) : void
      {
         var_1148 = param1;
      }
   }
}
