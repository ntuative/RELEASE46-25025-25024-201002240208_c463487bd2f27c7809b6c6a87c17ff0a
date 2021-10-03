package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1739:Number;
      
      private var var_548:Number = 0;
      
      private var var_1738:Number;
      
      private var var_549:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1739 = param1;
         var_1738 = param2;
      }
      
      public function update() : void
      {
         var_549 += var_1738;
         var_548 += var_549;
         if(var_548 > 0)
         {
            var_548 = 0;
            var_549 = var_1739 * -1 * var_549;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_549 = param1;
         var_548 = 0;
      }
      
      public function get location() : Number
      {
         return var_548;
      }
   }
}
