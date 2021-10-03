package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_632:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1960:int;
      
      private var var_1962:int;
      
      private var var_1961:Boolean;
      
      private var var_992:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_632);
         var_1962 = param1;
         var_1960 = param2;
         _color = param3;
         var_992 = param4;
         var_1961 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1960;
      }
      
      public function get presetNumber() : int
      {
         return var_1962;
      }
      
      public function get brightness() : int
      {
         return var_992;
      }
      
      public function get apply() : Boolean
      {
         return var_1961;
      }
   }
}
