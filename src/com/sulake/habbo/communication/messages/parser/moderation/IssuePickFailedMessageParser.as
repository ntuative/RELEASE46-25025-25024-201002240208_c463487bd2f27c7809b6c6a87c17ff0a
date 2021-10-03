package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1772:String;
      
      private var var_1773:int;
      
      private var var_1771:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1771 = param1.readInteger();
         var_1773 = param1.readInteger();
         var_1772 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1771;
      }
      
      public function get pickerUserId() : int
      {
         return var_1773;
      }
      
      public function get pickerUserName() : String
      {
         return var_1772;
      }
   }
}
