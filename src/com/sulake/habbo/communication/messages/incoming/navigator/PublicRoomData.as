package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1807:int;
      
      private var var_1806:String;
      
      private var var_1675:int;
      
      private var _disposed:Boolean;
      
      private var var_1808:int;
      
      private var var_1676:String;
      
      private var var_1202:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1676 = param1.readString();
         var_1807 = param1.readInteger();
         var_1675 = param1.readInteger();
         var_1806 = param1.readString();
         var_1808 = param1.readInteger();
         var_1202 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1808;
      }
      
      public function get worldId() : int
      {
         return var_1675;
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
      
      public function get unitPort() : int
      {
         return var_1807;
      }
      
      public function get castLibs() : String
      {
         return var_1806;
      }
      
      public function get nodeId() : int
      {
         return var_1202;
      }
   }
}
