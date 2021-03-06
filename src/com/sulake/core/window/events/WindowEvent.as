package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_278:String = "WE_CHILD_RESIZED";
      
      public static const const_1266:String = "WE_CLOSE";
      
      public static const const_1301:String = "WE_DESTROY";
      
      public static const const_145:String = "WE_CHANGE";
      
      public static const const_1170:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1471:String = "WE_PARENT_RESIZE";
      
      public static const const_87:String = "WE_UPDATE";
      
      public static const const_1174:String = "WE_MAXIMIZE";
      
      public static const const_400:String = "WE_DESTROYED";
      
      public static const const_847:String = "WE_UNSELECT";
      
      public static const const_1139:String = "WE_MAXIMIZED";
      
      public static const const_1432:String = "WE_UNLOCKED";
      
      public static const const_442:String = "WE_CHILD_REMOVED";
      
      public static const const_152:String = "WE_OK";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1241:String = "WE_ACTIVATE";
      
      public static const const_246:String = "WE_ENABLED";
      
      public static const const_425:String = "WE_CHILD_RELOCATED";
      
      public static const const_1267:String = "WE_CREATE";
      
      public static const const_726:String = "WE_SELECT";
      
      public static const const_168:String = "";
      
      public static const const_1550:String = "WE_LOCKED";
      
      public static const const_1497:String = "WE_PARENT_RELOCATE";
      
      public static const const_1500:String = "WE_CHILD_REMOVE";
      
      public static const const_1572:String = "WE_CHILD_RELOCATE";
      
      public static const const_1548:String = "WE_LOCK";
      
      public static const const_208:String = "WE_FOCUSED";
      
      public static const const_522:String = "WE_UNSELECTED";
      
      public static const const_864:String = "WE_DEACTIVATED";
      
      public static const const_1298:String = "WE_MINIMIZED";
      
      public static const const_1546:String = "WE_ARRANGED";
      
      public static const const_1454:String = "WE_UNLOCK";
      
      public static const const_1529:String = "WE_ATTACH";
      
      public static const const_1310:String = "WE_OPEN";
      
      public static const const_1140:String = "WE_RESTORE";
      
      public static const const_1542:String = "WE_PARENT_RELOCATED";
      
      public static const const_1275:String = "WE_RELOCATE";
      
      public static const const_1518:String = "WE_CHILD_RESIZE";
      
      public static const const_1475:String = "WE_ARRANGE";
      
      public static const const_1133:String = "WE_OPENED";
      
      public static const const_1372:String = "WE_CLOSED";
      
      public static const const_1502:String = "WE_DETACHED";
      
      public static const const_1479:String = "WE_UPDATED";
      
      public static const const_1232:String = "WE_UNFOCUSED";
      
      public static const const_463:String = "WE_RELOCATED";
      
      public static const const_1166:String = "WE_DEACTIVATE";
      
      public static const const_194:String = "WE_DISABLED";
      
      public static const const_723:String = "WE_CANCEL";
      
      public static const const_623:String = "WE_ENABLE";
      
      public static const const_1284:String = "WE_ACTIVATED";
      
      public static const const_1164:String = "WE_FOCUS";
      
      public static const const_1450:String = "WE_DETACH";
      
      public static const const_1244:String = "WE_RESTORED";
      
      public static const const_1285:String = "WE_UNFOCUS";
      
      public static const const_51:String = "WE_SELECTED";
      
      public static const const_1231:String = "WE_PARENT_RESIZED";
      
      public static const const_1352:String = "WE_CREATED";
      
      public static const const_1517:String = "WE_ATTACHED";
      
      public static const const_1243:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1586:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1366:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1586 = param3;
         var_1366 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1366;
      }
      
      public function get related() : IWindow
      {
         return var_1586;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1366 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
