package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1474:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1554:String = "ROE_MOUSE_ENTER";
      
      public static const const_473:String = "ROE_MOUSE_MOVE";
      
      public static const const_1480:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_211:String = "ROE_MOUSE_CLICK";
      
      public static const const_457:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1716:Boolean;
      
      private var var_1715:Boolean;
      
      private var var_1718:Boolean;
      
      private var var_1717:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1718 = param4;
         var_1717 = param5;
         var_1716 = param6;
         var_1715 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1715;
      }
      
      public function get altKey() : Boolean
      {
         return var_1718;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1717;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1716;
      }
   }
}
