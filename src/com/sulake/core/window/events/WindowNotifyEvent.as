package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1265:String = "WN_CREATED";
      
      public static const const_1000:String = "WN_DISABLE";
      
      public static const const_862:String = "WN_DEACTIVATED";
      
      public static const const_1016:String = "WN_OPENED";
      
      public static const const_860:String = "WN_CLOSED";
      
      public static const const_961:String = "WN_DESTROY";
      
      public static const const_1476:String = "WN_ARRANGED";
      
      public static const const_483:String = "WN_PARENT_RESIZED";
      
      public static const const_986:String = "WN_ENABLE";
      
      public static const const_903:String = "WN_RELOCATE";
      
      public static const const_979:String = "WN_FOCUS";
      
      public static const const_936:String = "WN_PARENT_RELOCATED";
      
      public static const const_350:String = "WN_PARAM_UPDATED";
      
      public static const const_702:String = "WN_PARENT_ACTIVATED";
      
      public static const const_223:String = "WN_RESIZED";
      
      public static const const_804:String = "WN_CLOSE";
      
      public static const const_852:String = "WN_PARENT_REMOVED";
      
      public static const const_227:String = "WN_CHILD_RELOCATED";
      
      public static const const_515:String = "WN_ENABLED";
      
      public static const const_248:String = "WN_CHILD_RESIZED";
      
      public static const const_950:String = "WN_MINIMIZED";
      
      public static const const_694:String = "WN_DISABLED";
      
      public static const const_188:String = "WN_CHILD_ACTIVATED";
      
      public static const const_470:String = "WN_STATE_UPDATED";
      
      public static const const_689:String = "WN_UNSELECTED";
      
      public static const const_459:String = "WN_STYLE_UPDATED";
      
      public static const const_1525:String = "WN_UPDATE";
      
      public static const const_361:String = "WN_PARENT_ADDED";
      
      public static const const_636:String = "WN_RESIZE";
      
      public static const const_593:String = "WN_CHILD_REMOVED";
      
      public static const const_1551:String = "";
      
      public static const const_806:String = "WN_RESTORED";
      
      public static const const_330:String = "WN_SELECTED";
      
      public static const const_808:String = "WN_MINIMIZE";
      
      public static const const_838:String = "WN_FOCUSED";
      
      public static const const_1202:String = "WN_LOCK";
      
      public static const const_309:String = "WN_CHILD_ADDED";
      
      public static const const_898:String = "WN_UNFOCUSED";
      
      public static const const_436:String = "WN_RELOCATED";
      
      public static const const_875:String = "WN_DEACTIVATE";
      
      public static const const_1366:String = "WN_CRETAE";
      
      public static const const_826:String = "WN_RESTORE";
      
      public static const const_281:String = "WN_ACTVATED";
      
      public static const const_1309:String = "WN_LOCKED";
      
      public static const const_450:String = "WN_SELECT";
      
      public static const const_942:String = "WN_MAXIMIZE";
      
      public static const const_985:String = "WN_OPEN";
      
      public static const const_677:String = "WN_UNSELECT";
      
      public static const const_1511:String = "WN_ARRANGE";
      
      public static const const_1346:String = "WN_UNLOCKED";
      
      public static const const_1584:String = "WN_UPDATED";
      
      public static const const_813:String = "WN_ACTIVATE";
      
      public static const const_1342:String = "WN_UNLOCK";
      
      public static const const_915:String = "WN_MAXIMIZED";
      
      public static const const_873:String = "WN_DESTROYED";
      
      public static const const_921:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1586,cancelable);
      }
   }
}
