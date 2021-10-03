package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1336:int;
      
      private var var_1119:int;
      
      private var var_1337:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1336;
      }
      
      public function flush() : Boolean
      {
         var_1119 = 0;
         var_1336 = 0;
         var_1337 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1119;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1336 = param1.readInteger();
         var_1119 = param1.readInteger();
         var_1337 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1337;
      }
   }
}
