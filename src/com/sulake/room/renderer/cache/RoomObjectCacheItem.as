package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_548:RoomObjectLocationCacheItem = null;
      
      private var var_172:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_548 = new RoomObjectLocationCacheItem(param1);
         var_172 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_548;
      }
      
      public function dispose() : void
      {
         if(var_548 != null)
         {
            var_548.dispose();
            var_548 = null;
         }
         if(var_172 != null)
         {
            var_172.dispose();
            var_172 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_172;
      }
   }
}
