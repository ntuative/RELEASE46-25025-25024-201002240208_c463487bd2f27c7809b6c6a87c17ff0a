package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1084:Boolean;
      
      private var _name:String;
      
      private var var_1620:String;
      
      private var var_1085:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1620 = String(param1.@link);
         var_1085 = Boolean(parseInt(param1.@fliph));
         var_1084 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1085;
      }
      
      public function get flipV() : Boolean
      {
         return var_1084;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1620;
      }
   }
}
