package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   
   public class ToolbarIconGroup
   {
       
      
      private var var_292:Array;
      
      private var var_878:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_474:String;
      
      private var var_37:IWindowContainer;
      
      private var var_1710:int = 5;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_673:Array;
      
      private var var_1900:Number;
      
      private var var_379:ToolbarBarMenuAnimator;
      
      private var var_1204:Array;
      
      private var var_133:Number;
      
      private var var_1898:XML;
      
      private var var_1899:int;
      
      private var var_1205:Number;
      
      private var var_1203:Array;
      
      public function ToolbarIconGroup(param1:IHabboWindowManager, param2:IAssetLibrary, param3:int, param4:IEventDispatcher, param5:IWindowContainer, param6:ToolbarBarMenuAnimator, param7:Number)
      {
         var_292 = new Array();
         var_673 = new Array();
         var_1204 = new Array();
         var_1203 = new Array();
         super();
         _windowManager = param1;
         _assetLibrary = param2;
         var_37 = param5;
         _events = param4;
         var_379 = param6;
         var_133 = param7;
      }
      
      public function get size() : Number
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_292.length)
         {
            if(var_292[_loc2_].exists)
            {
               _loc1_ += var_1205;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function setIcon(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = null;
         _loc3_ = getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIcon(param2);
            alignItems();
         }
      }
      
      public function acceptsIcon(param1:String) : Boolean
      {
         return var_1203.indexOf(param1) > -1;
      }
      
      public function get iconCount() : int
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_292.length)
         {
            if(var_292[_loc2_].exists)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set windowBottomMargin(param1:int) : void
      {
         var_1899 = param1;
      }
      
      public function get iconSize() : Number
      {
         return var_1205;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            var_673.shift();
            _loc1_ = var_292.shift();
            _loc1_.dispose();
            _loc1_ = null;
         }
      }
      
      public function set orientation(param1:String) : void
      {
         var_474 = param1;
      }
      
      public function getIconByMenuId(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < var_292.length)
         {
            _loc2_ = var_292[_loc3_];
            if(_loc2_ != null)
            {
               if(_loc2_.docksMenu(param1))
               {
                  return _loc2_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function set iconSize(param1:Number) : void
      {
         var_1205 = param1;
      }
      
      public function setContent(param1:String, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         _loc3_ = getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIconBitmapData(param2);
            alignItems();
         }
      }
      
      public function containsIcon(param1:String) : Boolean
      {
         return var_673.indexOf(param1) > -1;
      }
      
      public function get toolbarUsableWidth() : Number
      {
         return var_133;
      }
      
      private function alignItems() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < var_1204.length)
         {
            _loc2_ = var_673.indexOf(var_1204[_loc4_]);
            if(_loc2_ > -1)
            {
               _loc1_ = var_292[_loc2_];
               if(_loc1_.exists)
               {
                  _loc1_.changePosition(var_878 + _loc3_);
                  _loc3_ += var_1205;
               }
            }
            _loc4_++;
         }
      }
      
      public function get windowMargin() : int
      {
         return var_1710;
      }
      
      public function get windowBottomMargin() : int
      {
         return var_1899;
      }
      
      private function createIconObject(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         _loc2_ = getIconById(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = new ToolbarIcon(this,_windowManager,_assetLibrary,param1,_events,var_379);
         var_37.addChild(_loc2_.window);
         var_673.push(param1);
         var_292.push(_loc2_);
         return _loc2_;
      }
      
      public function addContentIndexFromXmlList(param1:XML) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return false;
         }
         var_1898 = param1;
         _loc4_ = param1.elements("icon");
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length())
         {
            _loc8_ = _loc4_[_loc7_];
            _loc2_ = "null";
            if(_loc2_ != null)
            {
               if(!containsIcon(_loc2_))
               {
                  _loc6_ = createIconObject(_loc2_);
                  if(_loc6_ == null)
                  {
                     return false;
                  }
                  _loc6_.defineFromXML(_loc8_);
                  var_1204.push(_loc2_);
                  _loc5_ = _loc8_.elements("dock");
                  if(_loc5_.length() > 0)
                  {
                     _loc9_ = 0;
                     while(_loc9_ < _loc5_.length())
                     {
                        _loc3_ = "null";
                        var_1203.push(_loc3_);
                        _loc6_.dockMenu(_loc3_,getMenuYieldList(_loc3_),_loc5_[_loc9_].@locktoicon == "true");
                        _loc9_++;
                     }
                  }
                  else
                  {
                     var_1203.push(_loc2_);
                     if(_loc8_.elements("nodock").length() == 0)
                     {
                        _loc6_.dockMenu(_loc2_);
                     }
                  }
               }
            }
            _loc7_++;
         }
         return true;
      }
      
      public function removeContent(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = var_673.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = getIconById(param1);
            if(_loc3_ != null)
            {
               _loc3_.setIcon(false);
            }
         }
      }
      
      public function get orientation() : String
      {
         return var_474;
      }
      
      public function set position(param1:Number) : void
      {
         var_878 = param1;
         alignItems();
      }
      
      public function getIconById(param1:String) : ToolbarIcon
      {
         if(!containsIcon(param1))
         {
            return null;
         }
         return var_292[var_673.indexOf(param1)];
      }
      
      public function set defaultIconSize(param1:Number) : void
      {
         var_1900 = param1;
      }
      
      public function get defaultIconSize() : Number
      {
         return var_1900;
      }
      
      public function set windowMargin(param1:int) : void
      {
         var_1710 = param1;
      }
      
      public function getMenuYieldList(param1:String) : Array
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:XMLList = var_1898.elements("menu");
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length())
         {
            if(HabboToolbarIconEnum[_loc3_[_loc5_].@id] == param1)
            {
               _loc4_ = _loc3_[_loc5_].elements("yield");
               _loc6_ = 0;
               while(_loc6_ < _loc4_.length())
               {
                  _loc2_.push(HabboToolbarIconEnum[_loc4_[_loc6_].@id]);
                  _loc6_++;
               }
            }
            _loc5_++;
         }
         return _loc2_;
      }
   }
}
