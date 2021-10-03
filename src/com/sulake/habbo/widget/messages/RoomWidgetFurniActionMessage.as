package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_256:String = "RWFAM_MOVE";
      
      public static const const_512:String = "RWFUAM_ROTATE";
      
      public static const const_624:String = "RWFAM_PICKUP";
       
      
      private var var_1616:int = 0;
      
      private var var_1615:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1616 = param2;
         var_1615 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1616;
      }
      
      public function get furniCategory() : int
      {
         return var_1615;
      }
   }
}
