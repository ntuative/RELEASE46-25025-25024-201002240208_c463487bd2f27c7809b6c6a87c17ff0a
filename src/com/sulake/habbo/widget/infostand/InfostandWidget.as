package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private var var_2096:Array;
      
      private const const_1417:String = "infostand_user_view";
      
      private var var_304:InfoStandPetView;
      
      private var var_1186:InfoStandPetData;
      
      private var var_138:Timer;
      
      private var var_873:InfoStandFurniView;
      
      private var var_382:InfostandFurniData;
      
      private var var_352:InfoStandBotView;
      
      private var _mainContainer:IWindowContainer;
      
      private const const_1416:String = "infostand_bot_view";
      
      private var _config:IHabboConfigurationManager;
      
      private const const_1414:String = "infostand_pet_view";
      
      private const const_1415:String = "infostand_furni_view";
      
      private const const_1630:int = 3000;
      
      private var var_201:InfoStandUserView;
      
      private var var_408:InfostandUserData;
      
      public function InfostandWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param4;
         var_873 = new InfoStandFurniView(this,const_1415);
         var_201 = new InfoStandUserView(this,const_1417);
         var_304 = new InfoStandPetView(this,const_1414);
         var_352 = new InfoStandBotView(this,const_1416);
         var_408 = new InfostandUserData();
         var_382 = new InfostandFurniData();
         var_1186 = new InfoStandPetData();
         var_138 = new Timer(const_1630);
         var_138.addEventListener(TimerEvent.TIMER,onUpdateTimer);
         mainContainer.visible = false;
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            var_2096 = param1.tags;
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            var_201.setTags(param1.tags);
         }
         else
         {
            var_201.setTags(param1.tags,var_2096);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_308,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_209,onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_253,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_216,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_222,onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_597,onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_150,onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_135,onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_128,onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_637,onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_138,onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return mainContainer;
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         petData.setData(param1);
         userData.petRespectLeft = param1.petRespectLeft;
         var_304.update(petData);
         selectView(const_1414);
         if(var_138)
         {
            var_138.start();
         }
      }
      
      public function get userData() : InfostandUserData
      {
         return var_408;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_201.update(param1);
         selectView(const_1417);
         if(var_138)
         {
            var_138.stop();
         }
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(var_304 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_382,var_304.getCurrentPetId()));
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_308,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_209,onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_253,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_216,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_222,onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_597,onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_150,onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_135,onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_128,onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_637,onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_138,onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,onPetCommands);
      }
      
      override public function dispose() : void
      {
         if(var_138)
         {
            var_138.stop();
         }
         var_138 = null;
         if(var_201)
         {
            var_201.dispose();
         }
         var_201 = null;
         if(var_873)
         {
            var_873.dispose();
         }
         var_873 = null;
         if(var_352)
         {
            var_352.dispose();
         }
         var_352 = null;
         if(var_304)
         {
            var_304.dispose();
         }
         var_304 = null;
         super.dispose();
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != userData.userId)
         {
            return;
         }
         userData.badges = param1.badges;
         var_201.clearBadges();
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         furniData.setData(param1);
         var_873.update(param1);
         selectView(const_1415);
         if(var_138)
         {
            var_138.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userData.setData(param1);
         var_352.update(param1);
         selectView(const_1416);
         if(var_138)
         {
            var_138.stop();
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(!param1.isOwnUser)
         {
         }
         if(param1.userId != userData.userId)
         {
            return;
         }
         if(userData.isBot())
         {
            var_352.image = param1.image;
         }
         else
         {
            var_201.image = param1.image;
         }
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(userData.isBot())
            {
               var_352.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               var_201.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == userData.groupBadgeId)
         {
            var_201.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function selectView(param1:String) : void
      {
         hideChildren();
         var _loc2_:IWindow = mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         mainContainer.visible = true;
         mainContainer.width = _loc2_.width;
         mainContainer.height = _loc2_.height;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_55,HabboWindowStyle.const_39,HabboWindowParam.const_39,new Rectangle(0,0,50,100)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_infostand");
            _mainContainer.background = true;
            _mainContainer.color = 0;
         }
         return _mainContainer;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return var_382;
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         close();
         if(var_138)
         {
            var_138.stop();
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_111:
               _loc2_ = param1.id == var_382.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_253:
               if(var_201 != null && false && var_201.window.visible)
               {
                  _loc2_ = param1.id == var_408.userRoomId;
                  break;
               }
               if(var_304 != null && false && var_304.window.visible)
               {
                  _loc2_ = param1.id == var_1186.roomIndex;
                  break;
               }
               if(var_352 != null && false && var_352.window.visible)
               {
                  _loc2_ = param1.id == var_408.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            close();
         }
      }
      
      public function get petData() : InfoStandPetData
      {
         return var_1186;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < mainContainer.numChildren)
         {
            _loc1_ = mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               mainContainer.width = _loc1_.width;
               mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(_mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _mainContainer.numChildren)
            {
               _mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         var_304.updateEnabledTrainingCommands(param1.id,param1.enabledCommands);
      }
      
      public function close() : void
      {
         hideChildren();
         if(var_138)
         {
            var_138.stop();
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_314,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
