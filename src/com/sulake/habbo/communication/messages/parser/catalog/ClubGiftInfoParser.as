package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_938:int;
      
      private var var_1624:int;
      
      private var var_565:Array;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftsAvailable() : int
      {
         return var_938;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1624;
      }
      
      public function flush() : Boolean
      {
         var_565 = [];
         return true;
      }
      
      public function get offers() : Array
      {
         return var_565;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1624 = param1.readInteger();
         var_938 = param1.readInteger();
         var_565 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_565.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
