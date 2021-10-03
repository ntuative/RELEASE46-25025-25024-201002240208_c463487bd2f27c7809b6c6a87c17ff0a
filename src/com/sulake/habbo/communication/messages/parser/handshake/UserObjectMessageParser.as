package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_530:String;
      
      private var var_2323:String;
      
      private var var_2324:int;
      
      private var var_2326:int;
      
      private var var_1285:String;
      
      private var var_1242:String;
      
      private var _name:String;
      
      private var var_500:int;
      
      private var var_875:int;
      
      private var var_2325:int;
      
      private var var_1867:int;
      
      private var var_2322:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2326;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1242;
      }
      
      public function get customData() : String
      {
         return this.var_2323;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_500;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2324;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2322;
      }
      
      public function get figure() : String
      {
         return this.var_530;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1867;
      }
      
      public function get sex() : String
      {
         return this.var_1285;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_530 = param1.readString();
         this.var_1285 = param1.readString();
         this.var_2323 = param1.readString();
         this.var_1242 = param1.readString();
         this.var_2325 = param1.readInteger();
         this.var_2322 = param1.readString();
         this.var_2324 = param1.readInteger();
         this.var_2326 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this.var_875 = param1.readInteger();
         this.var_500 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2325;
      }
      
      public function get respectLeft() : int
      {
         return this.var_875;
      }
   }
}
