package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_672:String;
      
      private var var_1985:int;
      
      private var var_1492:Boolean;
      
      private var _roomId:int;
      
      private var var_1984:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1492 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_672 = param1.readString();
         var_1984 = param1.readInteger();
         var_1985 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1492;
      }
      
      public function get roomName() : String
      {
         return var_672;
      }
      
      public function get enterMinute() : int
      {
         return var_1985;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1984;
      }
   }
}
