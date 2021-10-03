package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_934:String = "inventory_badges";
      
      public static const const_1357:String = "inventory_clothes";
      
      public static const const_1156:String = "inventory_furniture";
      
      public static const const_736:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_858:String = "inventory_effects";
       
      
      private var var_1996:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_736);
         var_1996 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1996;
      }
   }
}
