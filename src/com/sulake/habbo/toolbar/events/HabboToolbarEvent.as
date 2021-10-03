package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_79:String = "HTE_INITIALIZED";
      
      public static const const_56:String = "HTE_TOOLBAR_CLICK";
      
      public static const TOOLBAR_ORIENTATION:String = "HTE_TOOLBAR_ORIENTATION";
       
      
      private var var_474:String;
      
      private var var_641:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set orientation(param1:String) : void
      {
         var_474 = param1;
      }
      
      public function get iconId() : String
      {
         return var_641;
      }
      
      public function get orientation() : String
      {
         return var_474;
      }
      
      public function set iconId(param1:String) : void
      {
         var_641 = param1;
      }
   }
}
