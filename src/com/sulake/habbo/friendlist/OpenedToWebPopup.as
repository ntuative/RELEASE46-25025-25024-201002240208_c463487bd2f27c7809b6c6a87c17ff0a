package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class OpenedToWebPopup
   {
       
      
      private var var_171:Timer;
      
      private var _friendList:HabboFriendList;
      
      private var var_247:IWindowContainer;
      
      public function OpenedToWebPopup(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
      }
      
      private function getOpenedToWebAlert() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(_friendList.getXmlWindow("opened_to_web_popup"));
         _friendList.refreshButton(_loc1_,"opened_to_web",true,null,0);
         return _loc1_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(var_247 != null)
         {
            close(null);
         }
         var_247 = getOpenedToWebAlert();
         if(var_171 != null)
         {
            var_171.stop();
         }
         var_171 = new Timer(2000,1);
         var_171.addEventListener(TimerEvent.TIMER,close);
         var_171.start();
         var_247.x = param1;
         var_247.y = param2;
      }
      
      private function close(param1:Event) : void
      {
         var_247.destroy();
         var_247 = null;
      }
   }
}
