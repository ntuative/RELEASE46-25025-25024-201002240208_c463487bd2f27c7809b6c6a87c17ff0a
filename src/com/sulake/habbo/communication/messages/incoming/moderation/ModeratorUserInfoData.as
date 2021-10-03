package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1719:int;
      
      private var var_1720:int;
      
      private var var_1721:int;
      
      private var _userName:String;
      
      private var var_1724:int;
      
      private var var_1722:int;
      
      private var var_1723:int;
      
      private var _userId:int;
      
      private var var_645:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1722 = param1.readInteger();
         var_1724 = param1.readInteger();
         var_645 = param1.readBoolean();
         var_1721 = param1.readInteger();
         var_1720 = param1.readInteger();
         var_1719 = param1.readInteger();
         var_1723 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1723;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_645;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1724;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1720;
      }
      
      public function get cautionCount() : int
      {
         return var_1719;
      }
      
      public function get cfhCount() : int
      {
         return var_1721;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1722;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
