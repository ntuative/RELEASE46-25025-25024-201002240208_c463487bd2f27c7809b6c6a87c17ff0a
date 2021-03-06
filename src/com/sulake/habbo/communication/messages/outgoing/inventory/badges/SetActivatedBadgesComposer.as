package com.sulake.habbo.communication.messages.outgoing.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SetActivatedBadgesComposer implements IMessageComposer
   {
       
      
      private var var_974:Array;
      
      private const const_1398:int = 5;
      
      public function SetActivatedBadgesComposer()
      {
         super();
         var_974 = new Array();
      }
      
      public function addActivatedBadge(param1:String) : void
      {
         if(var_974.length >= const_1398)
         {
            return;
         }
         var_974.push(param1);
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 1;
         while(_loc2_ <= const_1398)
         {
            if(_loc2_ <= var_974.length)
            {
               _loc1_.push(_loc2_);
               _loc1_.push(var_974[_loc2_ - 1]);
            }
            else
            {
               _loc1_.push(_loc2_);
               _loc1_.push("");
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
      }
   }
}
