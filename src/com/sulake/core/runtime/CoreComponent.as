package com.sulake.core.runtime
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.profiler.ProfilerViewer;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public final class CoreComponent extends ComponentContext implements ICore
   {
      
      private static const const_129:uint = 3;
      
      private static const const_1066:String = "zip-libraries";
      
      private static const const_1071:String = "library";
      
      private static const const_1067:String = "library";
      
      private static const const_1072:String = "asset-libraries";
      
      private static const const_1070:String = "library";
      
      private static const const_1073:String = "service-libraries";
      
      private static const const_1068:String = "library";
      
      private static const const_1069:String = "component-libraries";
       
      
      private var var_1459:Number = 0;
      
      private var var_1209:IEventDispatcher;
      
      private var var_224:Array;
      
      private var var_259:uint;
      
      private var var_822:Profiler;
      
      private var var_469:Array;
      
      private var var_568:Array;
      
      private var var_258:Array;
      
      private var var_260:Array;
      
      private var var_674:ProfilerViewer;
      
      private var var_261:Array;
      
      private var var_257:uint;
      
      public function CoreComponent(param1:DisplayObjectContainer, param2:uint)
      {
         super(this,Component.COMPONENT_FLAG_CONTEXT,new AssetLibraryCollection("_core_assets"));
         _debug = (param2 & 0) == Core.CORE_SETUP_DEBUG;
         var_469 = new Array();
         var_568 = new Array();
         var_207 = param1;
         var _loc3_:int = 0;
         while(_loc3_ < CoreComponent.const_129)
         {
            var_469.push(new Array());
            var_568.push(0);
            _loc3_++;
         }
         var_259 = getTimer();
         attachComponent(this,[new IIDCore()]);
         switch(param2 & 0)
         {
            case Core.const_1177:
               debug("Core; using simple frame update handler");
               var_207.addEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
               break;
            case Core.const_788:
               debug("Core; using complex frame update handler");
               var_207.addEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
               break;
            case Core.const_1282:
               debug("Core; using profiler frame update handler");
               var_207.addEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
               var_822 = new Profiler(this);
               attachComponent(var_822,[new IIDProfiler()]);
               var_674 = new ProfilerViewer();
               var_207.addChild(var_674);
               break;
            case Core.CORE_SETUP_DEBUG:
               debug("Core; using debug frame update handler");
               var_207.addEventListener(Event.ENTER_FRAME,debugFrameUpdateHandler);
         }
      }
      
      private function errorInLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:LibraryLoader = LibraryLoader(param1.target);
         error("Failed to download library \"" + _loc2_.url + "\" HTTP status " + param1.status + ": " + _loc2_.getLastErrorMessage(),true,Core.const_1235);
         updateLoadingProcess(param1);
      }
      
      override public function removeUpdateReceiver(param1:IUpdateReceiver) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < CoreComponent.const_129)
         {
            _loc3_ = var_469[_loc4_] as Array;
            _loc2_ = _loc3_.indexOf(param1);
            if(_loc2_ > -1)
            {
               _loc3_[_loc2_] = null;
               return;
            }
            _loc4_++;
         }
      }
      
      private function debugFrameUpdateHandler(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc2_:uint = getTimer();
         var _loc3_:uint = _loc2_ - var_259;
         var_259 = _loc2_;
         _loc4_ = 0;
         while(_loc4_ < CoreComponent.const_129)
         {
            var_568[_loc4_] = 0;
            _loc5_ = var_469[_loc4_];
            _loc8_ = 0;
            _loc7_ = uint(_loc5_.length);
            while(_loc8_ != _loc7_)
            {
               _loc6_ = IUpdateReceiver(_loc5_[_loc8_]);
               if(_loc6_ == null || _loc6_.disposed)
               {
                  _loc5_.splice(_loc8_,1);
                  _loc7_--;
               }
               else
               {
                  _loc6_.update(_loc3_);
                  _loc8_++;
               }
            }
            _loc4_++;
         }
      }
      
      private function updateLoadingEventDelegate() : void
      {
         var _loc1_:Number = NaN;
         if(var_1209)
         {
            _loc1_ = NaN + (var_1459 > 0 ? var_1459 + var_224.length - 1 : var_224.length);
            if(_loc1_ > 0)
            {
               var_1209.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,Number(var_257) - _loc1_,Number(var_257)));
            }
            else
            {
               var_1209.dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      public function getLastErrorMessage() : String
      {
         return var_924;
      }
      
      private function simpleFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_259;
         var_259 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_129)
         {
            var_568[criticality] = 0;
            receivers = var_469[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     receiver.update(msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     trace(e.getStackTrace());
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
      }
      
      public function readConfigDocument(param1:XML, param2:IEventDispatcher = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         debug("Parsing config document");
         var_1209 = param2;
         if(var_224 == null)
         {
            var_224 = new Array();
         }
         _loc3_ = param1.child(const_1066)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1071);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_224.push(_loc6_);
               ++var_257;
            }
         }
         if(var_260 == null)
         {
            var_260 = new Array();
         }
         _loc3_ = param1.child(const_1072)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1070);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_260.push(_loc6_);
               ++var_257;
            }
         }
         if(var_261 == null)
         {
            var_261 = new Array();
         }
         _loc3_ = param1.child(const_1073)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1068);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_261.push(_loc6_);
               ++var_257;
            }
         }
         if(var_258 == null)
         {
            var_258 = new Array();
         }
         _loc3_ = param1.child(const_1069)[0];
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.child(const_1067);
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.attribute("url").toString();
               var_258.push(_loc6_);
               ++var_257;
            }
         }
         updateLoadingProcess();
      }
      
      override public function registerUpdateReceiver(param1:IUpdateReceiver, param2:uint) : void
      {
         removeUpdateReceiver(param1);
         param2 = param2 >= CoreComponent.const_129 ? 4294967295 : uint(param2);
         var _loc3_:Array = var_469[param2] as Array;
         _loc3_.push(param1);
      }
      
      private function profilerFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_259;
         var_259 = msCurrentTime;
         var_822.start();
         criticality = 0;
         while(criticality < CoreComponent.const_129)
         {
            var_568[criticality] = 0;
            receivers = var_469[criticality];
            index = 0;
            length = receivers.length;
            while(index != length)
            {
               receiver = IUpdateReceiver(receivers[index]);
               if(receiver == null || receiver.disposed)
               {
                  receivers.splice(index,1);
                  length--;
               }
               else
               {
                  try
                  {
                     var_822.update(receiver,msSinceLastUpdate);
                  }
                  catch(e:Error)
                  {
                     error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                     return;
                  }
                  index++;
               }
            }
            criticality++;
         }
         var_822.stop();
         var_674.refresh(var_822);
      }
      
      public function initialize() : void
      {
         _events.dispatchEvent(new Event(Component.COMPONENT_EVENT_RUNNING));
         Logger.log(toXMLString());
      }
      
      override public function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(param2)
         {
            if(param4)
            {
               ErrorReportStorage.setParameter("error_data",String(param4.getStackTrace()));
            }
            ErrorReportStorage.setParameter("error_cat",String(param3));
            ErrorReportStorage.setParameter("error_desc",param1);
         }
         super.error(param1,param2,param3);
         if(param2)
         {
            dispose();
         }
      }
      
      private function complexFrameUpdateHandler(param1:Event) : void
      {
         var criticality:uint = 0;
         var receivers:Array = null;
         var receiver:IUpdateReceiver = null;
         var length:uint = 0;
         var index:uint = 0;
         var skip:Boolean = false;
         var t:uint = 0;
         var event:Event = param1;
         var msCurrentTime:uint = getTimer();
         var msSinceLastUpdate:uint = msCurrentTime - var_259;
         var maxTimePerFrame:uint = 1000 / var_207.stage.frameRate;
         var_259 = msCurrentTime;
         criticality = 0;
         while(criticality < CoreComponent.const_129)
         {
            t = getTimer();
            skip = false;
            if(t - msCurrentTime > maxTimePerFrame)
            {
               if(var_568[criticality] < criticality)
               {
                  ++0;
                  skip = true;
               }
            }
            if(!skip)
            {
               var_568[criticality] = 0;
               receivers = var_469[criticality];
               index = 0;
               length = receivers.length;
               while(index != length)
               {
                  receiver = IUpdateReceiver(receivers[index]);
                  if(receiver == null || receiver.disposed)
                  {
                     receivers.splice(index,1);
                     length--;
                  }
                  else
                  {
                     try
                     {
                        receiver.update(msSinceLastUpdate);
                     }
                     catch(e:Error)
                     {
                        trace(e.getStackTrace());
                        error("Error in update receiver \"" + getQualifiedClassName(receiver) + "\": " + e.message,true,e.errorID,e);
                        return;
                     }
                     index++;
                  }
               }
            }
            criticality++;
         }
      }
      
      public function getLastDebugMessage() : String
      {
         return var_2268;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(!disposed)
         {
            debug("Disposing core");
            var_207.removeEventListener(Event.ENTER_FRAME,simpleFrameUpdateHandler);
            var_207.removeEventListener(Event.ENTER_FRAME,complexFrameUpdateHandler);
            var_207.removeEventListener(Event.ENTER_FRAME,profilerFrameUpdateHandler);
            var_207 = null;
            _loc3_ = 0;
            while(_loc3_ < CoreComponent.const_129)
            {
               _loc2_ = var_469[_loc3_] as Array;
               _loc1_ = uint(_loc2_.length);
               while(_loc1_-- > 0)
               {
                  _loc2_.pop();
               }
               _loc3_++;
            }
            if(var_224 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_224.pop();
               }
            }
            if(var_260 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_260.pop();
               }
            }
            if(var_261 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_261.pop();
               }
            }
            if(var_258 != null)
            {
               _loc1_ = 0;
               while(_loc1_-- > 0)
               {
                  var_258.pop();
               }
            }
            if(var_674 != null)
            {
               var_674.dispose();
               var_674 = null;
            }
            super.dispose();
         }
      }
      
      private function updateLoadingProcess(param1:LibraryLoaderEvent = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 != null)
         {
            if(param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE || param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR)
            {
               _loc2_ = param1.target as LibraryLoader;
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.removeEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               _loc3_ = _loc2_.url;
               debug("Loading library \"" + _loc3_ + "\" " + (param1.type == LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE ? "ready" : "failed\n" + _loc2_.getLastErrorMessage()));
               if(false)
               {
                  if(var_224[0] == _loc3_)
                  {
                     var_1459 = 0;
                     var_224.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_260[0] == _loc3_)
                  {
                     var_260.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_261[0] == _loc3_)
                  {
                     var_261.splice(0,1);
                  }
               }
               if(false)
               {
                  if(var_258[0] == _loc3_)
                  {
                     var_258.splice(0,1);
                  }
               }
            }
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = _assets.loadFromArchive(new URLRequest(_loc3_),null);
            if(_loc2_.ready)
            {
               var_224.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading zip library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc4_ = new LoaderContext(false,new ApplicationDomain());
            _loc2_ = _assets.loadFromFile(new URLRequest(_loc3_),true,_loc4_);
            if(_loc2_.ready)
            {
               var_260.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading asset library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_261.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading service library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         if(false)
         {
            _loc3_ = "null";
            _loc2_ = loadFromFile(new URLRequest(_loc3_),new LoaderContext(false,ApplicationDomain.currentDomain,null));
            if(_loc2_.ready)
            {
               var_258.splice(0,1);
               updateLoadingProcess();
            }
            else
            {
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,updateLoadingProcess);
               _loc2_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,errorInLoadingProcess);
               debug("Loading component library " + _loc3_);
            }
            updateLoadingEventDelegate();
            return;
         }
         updateLoadingEventDelegate();
         debug("All libraries loaded, Core is now running");
      }
   }
}
