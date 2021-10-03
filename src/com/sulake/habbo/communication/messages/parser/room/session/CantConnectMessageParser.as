package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1559:int = 2;
      
      public static const const_290:int = 4;
      
      public static const const_1330:int = 1;
      
      public static const const_1289:int = 3;
       
      
      private var var_982:int = 0;
      
      private var var_797:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_982;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_982 = param1.readInteger();
         if(var_982 == 3)
         {
            var_797 = param1.readString();
         }
         else
         {
            var_797 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_982 = 0;
         var_797 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_797;
      }
   }
}
