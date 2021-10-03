package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1665:int;
      
      private var var_1662:int = 0;
      
      private var var_1664:String;
      
      private var var_1666:int;
      
      private var var_1663:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1665 = param1;
         var_1666 = param2;
         var_1663 = param3;
         var_1664 = param4;
      }
      
      public function get length() : int
      {
         return var_1666;
      }
      
      public function get name() : String
      {
         return var_1663;
      }
      
      public function get creator() : String
      {
         return var_1664;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1662;
      }
      
      public function get id() : int
      {
         return var_1665;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1662 = param1;
      }
   }
}
