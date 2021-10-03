package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1475:Array;
      
      private var var_1924:int;
      
      private var var_1973:int;
      
      private var var_1970:int;
      
      private var var_1972:int;
      
      private var _dayOffsets:Array;
      
      private var var_1971:int;
      
      private var var_1476:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1973;
      }
      
      public function get historyLength() : int
      {
         return var_1972;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1970;
      }
      
      public function get offerCount() : int
      {
         return var_1971;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1476;
      }
      
      public function get averagePrice() : int
      {
         return var_1924;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1924 = param1.readInteger();
         var_1971 = param1.readInteger();
         var_1972 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1475 = [];
         var_1476 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1475.push(param1.readInteger());
            var_1476.push(param1.readInteger());
            _loc3_++;
         }
         var_1970 = param1.readInteger();
         var_1973 = param1.readInteger();
         return true;
      }
   }
}
