package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1994:int;
      
      private var var_405:Boolean;
      
      private var var_1993:Boolean;
      
      private var var_842:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1993 = param1.readBoolean();
         if(var_1993)
         {
            var_1994 = param1.readInteger();
            var_405 = param1.readBoolean();
         }
         else
         {
            var_842 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_842 != null)
         {
            var_842.dispose();
            var_842 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1994;
      }
      
      public function get owner() : Boolean
      {
         return var_405;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1993;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_842;
      }
   }
}
