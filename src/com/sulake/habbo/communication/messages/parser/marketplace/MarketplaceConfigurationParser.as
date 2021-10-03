package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2171:int;
      
      private var var_1570:int;
      
      private var var_2172:int;
      
      private var var_2170:int;
      
      private var var_2173:int;
      
      private var var_1571:int;
      
      private var var_2175:int;
      
      private var var_2174:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2171;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1570;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_2175;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2170;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2173;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1571;
      }
      
      public function get commission() : int
      {
         return var_2172;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2174 = param1.readBoolean();
         var_2172 = param1.readInteger();
         var_1570 = param1.readInteger();
         var_1571 = param1.readInteger();
         var_2170 = param1.readInteger();
         var_2171 = param1.readInteger();
         var_2173 = param1.readInteger();
         var_2175 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_2174;
      }
   }
}
