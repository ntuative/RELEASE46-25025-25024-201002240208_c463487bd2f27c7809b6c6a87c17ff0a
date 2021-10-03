package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1435:int = 9;
      
      public static const const_1444:int = 4;
      
      public static const const_1569:int = 1;
      
      public static const const_1351:int = 10;
      
      public static const const_1532:int = 2;
      
      public static const const_1350:int = 7;
      
      public static const const_1338:int = 11;
      
      public static const const_1593:int = 3;
      
      public static const const_1308:int = 8;
      
      public static const const_1326:int = 5;
      
      public static const const_1448:int = 6;
      
      public static const const_1147:int = 12;
       
      
      private var var_1925:String;
      
      private var _roomId:int;
      
      private var var_1119:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1925;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1119 = param1.readInteger();
         var_1925 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1119;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
