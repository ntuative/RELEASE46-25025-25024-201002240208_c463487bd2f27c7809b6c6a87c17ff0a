package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1480:int;
      
      private var var_1479:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1480;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1480 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1480 = this.var_1480;
         _loc1_.var_1479 = this.var_1479;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1479 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1479;
      }
   }
}
