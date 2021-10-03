package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2028:Array;
      
      private var var_2027:String;
      
      private var var_2029:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2027 = param1;
         var_2028 = param2;
         var_2029 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2027;
      }
      
      public function get yieldList() : Array
      {
         return var_2028;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2029;
      }
   }
}
