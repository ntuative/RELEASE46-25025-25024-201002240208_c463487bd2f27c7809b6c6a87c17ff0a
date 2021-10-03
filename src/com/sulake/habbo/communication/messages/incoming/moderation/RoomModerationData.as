package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_116:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1865:int;
      
      private var var_404:int;
      
      private var var_624:RoomData;
      
      private var var_1753:int;
      
      private var _ownerName:String;
      
      private var var_2042:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_404 = param1.readInteger();
         var_1865 = param1.readInteger();
         var_2042 = param1.readBoolean();
         var_1753 = param1.readInteger();
         _ownerName = param1.readString();
         var_116 = new RoomData(param1);
         var_624 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1865;
      }
      
      public function get event() : RoomData
      {
         return var_624;
      }
      
      public function get room() : RoomData
      {
         return var_116;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_116 != null)
         {
            var_116.dispose();
            var_116 = null;
         }
         if(var_624 != null)
         {
            var_624.dispose();
            var_624 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_404;
      }
      
      public function get ownerId() : int
      {
         return var_1753;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2042;
      }
   }
}
