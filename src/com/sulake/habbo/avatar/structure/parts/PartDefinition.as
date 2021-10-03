package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1537:int = -1;
      
      private var var_1298:Boolean;
      
      private var var_1299:String;
      
      private var var_2106:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2106 = String(param1["set-type"]);
         var_1299 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1298 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1537 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1299;
      }
      
      public function get staticId() : int
      {
         return var_1537;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1537 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1298;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1298 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1299 = param1;
      }
      
      public function get setType() : String
      {
         return var_2106;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
