package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomShortData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1676:String;
      
      private var var_1675:int;
      
      public function PublicRoomShortData(param1:IMessageDataWrapper)
      {
         super();
         var_1676 = param1.readString();
         var_1675 = param1.readInteger();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1676;
      }
      
      public function get worldId() : int
      {
         return var_1675;
      }
   }
}
