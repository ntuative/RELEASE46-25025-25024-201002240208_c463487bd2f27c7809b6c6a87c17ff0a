package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1063:int = 1;
      
      private static const const_1028:int = 3;
      
      private static const const_1064:int = 2;
      
      private static const const_1065:int = 15;
       
      
      private var var_819:int;
      
      private var var_209:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_209 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1064)
         {
            var_209 = new Array();
            var_209.push(const_1063);
            var_819 = const_1065;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_819 > 0)
         {
            --var_819;
         }
         if(var_819 == 0)
         {
            if(false)
            {
               super.setAnimation(var_209.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
