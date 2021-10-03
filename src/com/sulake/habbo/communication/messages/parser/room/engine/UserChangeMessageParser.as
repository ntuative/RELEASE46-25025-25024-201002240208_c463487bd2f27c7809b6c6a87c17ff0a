package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var var_530:String;
      
      private var var_1285:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_1284:String;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _id = param1.readInteger();
         var_530 = param1.readString();
         var_1285 = param1.readString();
         var_1284 = param1.readString();
         return true;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function flush() : Boolean
      {
         _id = 0;
         var_530 = "";
         var_1285 = "";
         var_1284 = "";
         return true;
      }
      
      public function get sex() : String
      {
         return var_1285;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get customInfo() : String
      {
         return var_1284;
      }
   }
}
