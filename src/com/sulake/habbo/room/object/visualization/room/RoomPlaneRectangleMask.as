package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1629:Number = 0;
      
      private var var_1632:Number = 0;
      
      private var var_1630:Number = 0;
      
      private var var_1631:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1632 = param1;
         var_1630 = param2;
         var_1629 = param3;
         var_1631 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1632;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1629;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1630;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1631;
      }
   }
}
