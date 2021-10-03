package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1450:String;
      
      private var var_1702:int;
      
      private var var_1703:int;
      
      private var var_1701:int;
      
      private var var_1700:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1702 = param1.readInteger();
         var_1701 = param1.readInteger();
         var_1703 = param1.readInteger();
         var_1700 = param1.readString();
         var_1450 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1450;
      }
      
      public function get hour() : int
      {
         return var_1702;
      }
      
      public function get minute() : int
      {
         return var_1701;
      }
      
      public function get chatterName() : String
      {
         return var_1700;
      }
      
      public function get chatterId() : int
      {
         return var_1703;
      }
   }
}
