package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1475:Array;
      
      private var var_1924:int;
      
      private var var_1973:int;
      
      private var var_1972:int;
      
      private var var_1970:int;
      
      private var _dayOffsets:Array;
      
      private var var_1971:int;
      
      private var var_1476:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1475;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1475 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1973;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1476 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1924 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1972;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1970;
      }
      
      public function get offerCount() : int
      {
         return var_1971;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1971 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1476;
      }
      
      public function get averagePrice() : int
      {
         return var_1924;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1970 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1972 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1973 = param1;
      }
   }
}
