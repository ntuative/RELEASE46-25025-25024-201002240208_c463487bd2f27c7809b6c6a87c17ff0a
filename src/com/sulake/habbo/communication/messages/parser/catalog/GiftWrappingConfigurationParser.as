package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1425:Array;
      
      private var var_2010:Boolean;
      
      private var var_556:Array;
      
      private var var_2009:int;
      
      private var var_557:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1425 = [];
         var_557 = [];
         var_556 = [];
         var_2010 = param1.readBoolean();
         var_2009 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1425.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_557.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_556.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_556;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1425;
      }
      
      public function get wrappingPrice() : int
      {
         return var_2009;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_557;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_2010;
      }
   }
}
