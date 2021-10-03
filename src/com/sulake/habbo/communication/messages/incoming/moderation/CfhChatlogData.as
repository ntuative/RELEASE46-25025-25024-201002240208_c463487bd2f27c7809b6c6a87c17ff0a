package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1030:int;
      
      private var var_1864:int;
      
      private var var_1436:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1436 = param1.readInteger();
         var_1864 = param1.readInteger();
         var_1030 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1436);
      }
      
      public function get reportedUserId() : int
      {
         return var_1030;
      }
      
      public function get callerUserId() : int
      {
         return var_1864;
      }
      
      public function get callId() : int
      {
         return var_1436;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
