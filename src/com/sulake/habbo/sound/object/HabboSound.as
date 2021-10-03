package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_979:SoundChannel = null;
      
      private var var_793:Boolean;
      
      private var var_978:Sound = null;
      
      private var var_706:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_978 = param1;
         var_978.addEventListener(Event.COMPLETE,onComplete);
         var_706 = 1;
         var_793 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_793;
      }
      
      public function stop() : Boolean
      {
         var_979.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_793 = false;
         var_979 = var_978.play(0);
         this.volume = var_706;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_706;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_979.position;
      }
      
      public function get length() : Number
      {
         return var_978.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_706 = param1;
         if(var_979 != null)
         {
            var_979.soundTransform = new SoundTransform(var_706);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_793 = true;
      }
   }
}
