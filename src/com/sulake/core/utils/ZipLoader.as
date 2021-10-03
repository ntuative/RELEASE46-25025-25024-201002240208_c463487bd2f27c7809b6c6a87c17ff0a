package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_368:FZip;
      
      private var var_1108:Array;
      
      private var var_1591:uint = 0;
      
      private var var_748:int = 0;
      
      private var var_2347:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1108 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1108;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_14.content);
         var_1108.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_748;
         if(var_1108.length == var_1591)
         {
            var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_14.loadBytes(var_368.getFileAt(var_748).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_314 = param1;
         if(var_368)
         {
            var_368.close();
         }
         var_368 = new FZip();
         var_368.addEventListener(Event.COMPLETE,onComplete);
         var_368.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_368.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_368.load(var_314);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_748 = 0;
         var_1591 = var_368.getFileCount();
         removeEventListeners();
         var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_14.loadBytes(var_368.getFileAt(var_748).content);
      }
   }
}
