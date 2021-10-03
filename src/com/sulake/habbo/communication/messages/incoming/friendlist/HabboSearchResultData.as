package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2298:Boolean;
      
      private var var_2297:int;
      
      private var var_2296:Boolean;
      
      private var var_1404:String;
      
      private var var_1242:String;
      
      private var var_1643:int;
      
      private var var_1762:String;
      
      private var var_2299:String;
      
      private var var_1761:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1643 = param1.readInteger();
         this.var_1404 = param1.readString();
         this.var_1762 = param1.readString();
         this.var_2298 = param1.readBoolean();
         this.var_2296 = param1.readBoolean();
         param1.readString();
         this.var_2297 = param1.readInteger();
         this.var_1761 = param1.readString();
         this.var_2299 = param1.readString();
         this.var_1242 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1242;
      }
      
      public function get avatarName() : String
      {
         return this.var_1404;
      }
      
      public function get avatarId() : int
      {
         return this.var_1643;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2298;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2299;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1761;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2296;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1762;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2297;
      }
   }
}
