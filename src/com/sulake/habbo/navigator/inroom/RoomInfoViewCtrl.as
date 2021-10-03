package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_700:IWindowContainer;
      
      private var var_1037:ITextWindow;
      
      private var var_199:RoomSettingsCtrl;
      
      private var var_1274:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1270:ITextWindow;
      
      private var var_344:IWindowContainer;
      
      private var var_2059:IWindowContainer;
      
      private var var_2061:ITextWindow;
      
      private var var_856:IWindowContainer;
      
      private var var_1510:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_672:ITextWindow;
      
      private var var_1509:IWindowContainer;
      
      private var var_1271:IWindowContainer;
      
      private var var_854:ITextWindow;
      
      private var var_1035:ITextFieldWindow;
      
      private var var_302:IWindowContainer;
      
      private var var_855:ITextWindow;
      
      private var var_1512:IButtonWindow;
      
      private var var_1036:ITextWindow;
      
      private var var_2309:int;
      
      private var var_1272:IContainerButtonWindow;
      
      private var var_857:IWindowContainer;
      
      private var var_1276:ITextWindow;
      
      private var var_1275:IContainerButtonWindow;
      
      private var var_1511:ITextWindow;
      
      private var var_1513:IButtonWindow;
      
      private var var_846:TagRenderer;
      
      private var var_2058:ITextWindow;
      
      private var var_345:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_699:ITextWindow;
      
      private var var_270:RoomThumbnailCtrl;
      
      private var var_1273:IContainerButtonWindow;
      
      private var var_2060:IWindowContainer;
      
      private var var_269:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_345 = new RoomEventViewCtrl(_navigator);
         var_199 = new RoomSettingsCtrl(_navigator,this,true);
         var_270 = new RoomThumbnailCtrl(_navigator);
         var_846 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_199);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_199.active = true;
         this.var_345.active = false;
         this.var_270.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1510.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1513.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1509.visible = Util.hasVisibleChildren(var_1509);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_672.text = param1.roomName;
         var_672.height = NaN;
         _ownerName.text = param1.ownerName;
         var_854.text = param1.description;
         var_846.refreshTags(var_344,param1.tags);
         var_854.visible = false;
         if(param1.description != "")
         {
            var_854.height = NaN;
            var_854.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_344,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_344,"thumb_down",_loc3_,onThumbDown,0);
         var_2061.visible = _loc3_;
         var_855.visible = !_loc3_;
         var_1511.visible = !_loc3_;
         var_1511.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_344,"home",param2,null,0);
         _navigator.refreshButton(var_344,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_344,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_672.y,0);
         var_344.visible = true;
         var_344.height = Util.getLowestPoint(var_344);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_403,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1512.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1274.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1273.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1272.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1275.visible = _navigator.data.canEditRoomSettings && param1;
         var_1271.visible = Util.hasVisibleChildren(var_1271);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_345.active = false;
         this.var_199.active = false;
         this.var_270.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_345.active = false;
         this.var_199.active = false;
         this.var_270.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_403,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_302);
         var_302.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_199.refresh(var_302);
         this.var_270.refresh(var_302);
         Util.moveChildrenToColumn(var_302,["room_details","room_buttons"],0,2);
         var_302.height = Util.getLowestPoint(var_302);
         var_302.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1035.setSelection(0,var_1035.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_269);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_345.refresh(var_269);
         if(Util.hasVisibleChildren(var_269) && !this.var_270.active)
         {
            Util.moveChildrenToColumn(var_269,["event_details","event_buttons"],0,2);
            var_269.height = Util.getLowestPoint(var_269);
            var_269.visible = true;
         }
         else
         {
            var_269.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_345.active = true;
         this.var_199.active = false;
         this.var_270.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1037.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1037.height = NaN;
         var_1270.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1270.height = NaN;
         Util.moveChildrenToColumn(var_700,["public_space_name","public_space_desc"],var_1037.y,0);
         var_700.visible = true;
         var_700.height = Math.max(86,Util.getLowestPoint(var_700));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_857.visible = true;
            var_1035.text = this.getEmbedData();
         }
         else
         {
            var_857.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_199.load(param1);
         this.var_199.active = true;
         this.var_345.active = false;
         this.var_270.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_199.active = false;
         this.var_345.active = false;
         this.var_270.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_67,false);
         _window.setParamFlag(HabboWindowParam.const_1318,true);
         _window.visible = false;
         var_302 = IWindowContainer(find("room_info"));
         var_344 = IWindowContainer(find("room_details"));
         var_700 = IWindowContainer(find("public_space_details"));
         var_2060 = IWindowContainer(find("owner_name_cont"));
         var_2059 = IWindowContainer(find("rating_cont"));
         var_1271 = IWindowContainer(find("room_buttons"));
         var_672 = ITextWindow(find("room_name"));
         var_1037 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_854 = ITextWindow(find("room_desc"));
         var_1270 = ITextWindow(find("public_space_desc"));
         var_1036 = ITextWindow(find("owner_caption"));
         var_855 = ITextWindow(find("rating_caption"));
         var_2061 = ITextWindow(find("rate_caption"));
         var_1511 = ITextWindow(find("rating_txt"));
         var_269 = IWindowContainer(find("event_info"));
         var_856 = IWindowContainer(find("event_details"));
         var_1509 = IWindowContainer(find("event_buttons"));
         var_2058 = ITextWindow(find("event_name"));
         var_699 = ITextWindow(find("event_desc"));
         var_1274 = IContainerButtonWindow(find("add_favourite_button"));
         var_1273 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1272 = IContainerButtonWindow(find("make_home_button"));
         var_1275 = IContainerButtonWindow(find("unmake_home_button"));
         var_1512 = IButtonWindow(find("room_settings_button"));
         var_1510 = IButtonWindow(find("create_event_button"));
         var_1513 = IButtonWindow(find("edit_event_button"));
         var_857 = IWindowContainer(find("embed_info"));
         var_1276 = ITextWindow(find("embed_info_txt"));
         var_1035 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1274,onAddFavouriteClick);
         Util.setProcDirectly(var_1273,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1512,onRoomSettingsClick);
         Util.setProcDirectly(var_1272,onMakeHomeClick);
         Util.setProcDirectly(var_1275,onUnmakeHomeClick);
         Util.setProcDirectly(var_1510,onEventSettingsClick);
         Util.setProcDirectly(var_1513,onEventSettingsClick);
         Util.setProcDirectly(var_1035,onEmbedSrcClick);
         _navigator.refreshButton(var_1274,"favourite",true,null,0);
         _navigator.refreshButton(var_1273,"favourite",true,null,0);
         _navigator.refreshButton(var_1272,"home",true,null,0);
         _navigator.refreshButton(var_1275,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_302,onHover);
         Util.setProcDirectly(var_269,onHover);
         var_1036.width = var_1036.textWidth;
         Util.moveChildrenToRow(var_2060,["owner_caption","owner_name"],var_1036.x,var_1036.y,3);
         var_855.width = var_855.textWidth;
         Util.moveChildrenToRow(var_2059,["rating_caption","rating_txt"],var_855.x,var_855.y,3);
         var_1276.height = NaN;
         Util.moveChildrenToColumn(var_857,["embed_info_txt","embed_src_txt"],var_1276.y,2);
         var_857.height = Util.getLowestPoint(var_857) + 5;
         var_2309 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2058.text = param1.eventName;
         var_699.text = param1.eventDescription;
         var_846.refreshTags(var_856,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_699.visible = false;
         if(param1.eventDescription != "")
         {
            var_699.height = NaN;
            var_699.y = Util.getLowestPoint(var_856) + 2;
            var_699.visible = true;
         }
         var_856.visible = true;
         var_856.height = Util.getLowestPoint(var_856);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_991,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
