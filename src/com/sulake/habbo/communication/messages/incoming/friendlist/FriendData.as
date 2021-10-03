package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_530:String;
      
      private var var_1244:String;
      
      private var var_1241:String;
      
      private var var_1149:int;
      
      private var var_1022:int;
      
      private var var_1242:String;
      
      private var _name:String;
      
      private var var_1243:Boolean;
      
      private var var_645:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1022 = param1.readInteger();
         this.var_645 = param1.readBoolean();
         this.var_1243 = param1.readBoolean();
         this.var_530 = param1.readString();
         this.var_1149 = param1.readInteger();
         this.var_1241 = param1.readString();
         this.var_1244 = param1.readString();
         this.var_1242 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_1022;
      }
      
      public function get realName() : String
      {
         return var_1242;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1241;
      }
      
      public function get categoryId() : int
      {
         return var_1149;
      }
      
      public function get online() : Boolean
      {
         return var_645;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1243;
      }
      
      public function get lastAccess() : String
      {
         return var_1244;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
   }
}
