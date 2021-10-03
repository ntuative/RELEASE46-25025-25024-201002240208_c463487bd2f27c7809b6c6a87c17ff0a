package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1960:int;
      
      private var var_1962:int;
      
      private var var_2199:Boolean;
      
      private var var_2201:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2200:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1962 = param1;
         var_1960 = param2;
         var_2201 = param3;
         var_2200 = param4;
         var_2199 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1962,var_1960,var_2201,var_2200,int(var_2199)];
      }
      
      public function dispose() : void
      {
      }
   }
}
