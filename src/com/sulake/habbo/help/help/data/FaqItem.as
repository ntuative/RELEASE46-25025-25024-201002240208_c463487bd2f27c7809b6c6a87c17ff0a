package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1305:int;
      
      private var var_1304:String;
      
      private var var_1860:String;
      
      private var _index:int;
      
      private var var_1861:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1305 = param1;
         var_1860 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1304;
      }
      
      public function get questionId() : int
      {
         return var_1305;
      }
      
      public function get questionText() : String
      {
         return var_1860;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1304 = param1;
         var_1861 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1861;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
