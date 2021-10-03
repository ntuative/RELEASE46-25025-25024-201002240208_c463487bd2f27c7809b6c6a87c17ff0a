package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_530:String;
      
      private var var_1725:int;
      
      private var var_2122:String;
      
      private var var_937:int;
      
      private var var_1154:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1154;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1154 = param1.readInteger();
         var_2122 = param1.readString();
         var_1725 = param1.readInteger();
         var_530 = param1.readString();
         var_937 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2122;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get petType() : int
      {
         return var_937;
      }
      
      public function get level() : int
      {
         return var_1725;
      }
   }
}
