package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_234:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_234 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_234;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_234 = new RoomSettingsFlatInfo();
         var_234.allowFurniMoving = param1.readInteger() == 1;
         var_234.doorMode = param1.readInteger();
         var_234.id = param1.readInteger();
         var_234.ownerName = param1.readString();
         var_234.type = param1.readString();
         var_234.name = param1.readString();
         var_234.description = param1.readString();
         var_234.showOwnerName = param1.readInteger() == 1;
         var_234.allowTrading = param1.readInteger() == 1;
         var_234.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
