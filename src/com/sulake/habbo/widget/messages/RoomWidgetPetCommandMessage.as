package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_604:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_618:String = "RWPCM_PET_COMMAND";
       
      
      private var var_170:String;
      
      private var var_1154:int = 0;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         var_1154 = param2;
         var_170 = param3;
      }
      
      public function get value() : String
      {
         return var_170;
      }
      
      public function get petId() : int
      {
         return var_1154;
      }
   }
}
