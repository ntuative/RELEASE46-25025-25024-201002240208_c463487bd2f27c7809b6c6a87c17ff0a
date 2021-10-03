package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_505:int = 2;
      
      public static const const_1004:int = 6;
      
      public static const const_549:int = 1;
      
      public static const const_653:int = 3;
      
      public static const const_901:int = 4;
      
      public static const const_589:int = 5;
       
      
      private var var_1810:String;
      
      private var var_1009:int;
      
      private var var_1809:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1009 = param2;
         var_1809 = param3;
         var_1810 = param4;
      }
      
      public function get time() : String
      {
         return var_1810;
      }
      
      public function get senderId() : int
      {
         return var_1009;
      }
      
      public function get messageText() : String
      {
         return var_1809;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
