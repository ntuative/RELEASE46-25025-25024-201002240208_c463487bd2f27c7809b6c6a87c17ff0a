package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1290:int = 4;
      
      public static const const_532:int = 3;
      
      public static const const_644:int = 2;
      
      public static const const_881:int = 1;
       
      
      private var var_2135:String;
      
      private var _disposed:Boolean;
      
      private var var_1865:int;
      
      private var var_2139:Boolean;
      
      private var var_824:String;
      
      private var var_882:PublicRoomData;
      
      private var var_2137:int;
      
      private var _index:int;
      
      private var var_2138:String;
      
      private var _type:int;
      
      private var var_1813:String;
      
      private var var_881:GuestRoomData;
      
      private var var_2136:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2135 = param1.readString();
         var_2136 = param1.readString();
         var_2139 = param1.readInteger() == 1;
         var_2138 = param1.readString();
         var_824 = param1.readString();
         var_2137 = param1.readInteger();
         var_1865 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_881)
         {
            var_1813 = param1.readString();
         }
         else if(_type == const_532)
         {
            var_882 = new PublicRoomData(param1);
         }
         else if(_type == const_644)
         {
            var_881 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2137;
      }
      
      public function get popupCaption() : String
      {
         return var_2135;
      }
      
      public function get userCount() : int
      {
         return var_1865;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2139;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_881)
         {
            return 0;
         }
         if(this.type == const_644)
         {
            return this.var_881.maxUserCount;
         }
         if(this.type == const_532)
         {
            return this.var_882.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2136;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_881 != null)
         {
            this.var_881.dispose();
            this.var_881 = null;
         }
         if(this.var_882 != null)
         {
            this.var_882.dispose();
            this.var_882 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_881;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2138;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_882;
      }
      
      public function get picRef() : String
      {
         return var_824;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1813;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
