package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1058:Boolean;
      
      private var var_1060:Boolean;
      
      private var var_1059:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1058;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1060;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1059 = param1.readBoolean();
         var_1060 = param1.readBoolean();
         var_1058 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1059;
      }
      
      public function flush() : Boolean
      {
         var_1059 = false;
         var_1060 = false;
         var_1058 = false;
         return true;
      }
   }
}
