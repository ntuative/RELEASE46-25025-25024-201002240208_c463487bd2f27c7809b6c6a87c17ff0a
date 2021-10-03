package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_809:LegacyWallGeometry = null;
      
      private var var_562:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_561:TileHeightMap = null;
      
      private var var_1863:String = null;
      
      private var _roomId:int = 0;
      
      private var var_808:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_809 = new LegacyWallGeometry();
         var_808 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_561 != null)
         {
            var_561.dispose();
         }
         var_561 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1863 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_809;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_808;
      }
      
      public function dispose() : void
      {
         if(var_561 != null)
         {
            var_561.dispose();
            var_561 = null;
         }
         if(var_809 != null)
         {
            var_809.dispose();
            var_809 = null;
         }
         if(var_808 != null)
         {
            var_808.dispose();
            var_808 = null;
         }
         if(var_562 != null)
         {
            var_562.dispose();
            var_562 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_561;
      }
      
      public function get worldType() : String
      {
         return var_1863;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_562 != null)
         {
            var_562.dispose();
         }
         var_562 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_562;
      }
   }
}
