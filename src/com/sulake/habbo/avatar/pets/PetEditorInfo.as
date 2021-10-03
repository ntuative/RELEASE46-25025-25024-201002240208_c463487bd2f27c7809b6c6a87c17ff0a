package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1770:Boolean;
      
      private var var_1769:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1770 = Boolean(parseInt(param1.@club));
         var_1769 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1770;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1769;
      }
   }
}
