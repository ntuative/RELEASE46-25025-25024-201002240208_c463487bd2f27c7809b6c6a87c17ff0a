package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_556:Array;
      
      private var var_1258:int;
      
      private var var_1425:Array;
      
      private var var_557:Array;
      
      private var var_2174:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_2174 = _loc2_.isWrappingEnabled;
         var_1258 = _loc2_.wrappingPrice;
         var_1425 = _loc2_.stuffTypes;
         var_557 = _loc2_.boxTypes;
         var_556 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_556;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1425;
      }
      
      public function get price() : int
      {
         return var_1258;
      }
      
      public function get boxTypes() : Array
      {
         return var_557;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_2174;
      }
   }
}
