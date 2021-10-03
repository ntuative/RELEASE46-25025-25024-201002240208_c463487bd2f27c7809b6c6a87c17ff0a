package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1258:int;
      
      private var var_1923:int = -1;
      
      private var var_360:int;
      
      private var var_1924:int;
      
      private var var_1682:int;
      
      private var _offerId:int;
      
      private var var_1257:int;
      
      private var var_1616:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1616 = param2;
         var_1682 = param3;
         var_1258 = param4;
         var_360 = param5;
         var_1923 = param6;
         var_1924 = param7;
         var_1257 = param8;
      }
      
      public function get status() : int
      {
         return var_360;
      }
      
      public function get price() : int
      {
         return var_1258;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1923;
      }
      
      public function get offerCount() : int
      {
         return var_1257;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1682;
      }
      
      public function get averagePrice() : int
      {
         return var_1924;
      }
      
      public function get furniId() : int
      {
         return var_1616;
      }
   }
}
