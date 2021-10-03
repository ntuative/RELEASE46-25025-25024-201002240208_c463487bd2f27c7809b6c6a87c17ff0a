package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1031:Boolean;
      
      private var var_1266:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1031 = param1.readInteger() > 0;
         var_1266 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1031;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1266;
      }
      
      public function flush() : Boolean
      {
         var_1031 = false;
         var_1266 = false;
         return true;
      }
   }
}
