package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_200:String = "e";
      
      public static const const_73:String = "i";
      
      public static const const_75:String = "s";
       
      
      private var var_1079:String;
      
      private var var_1349:String;
      
      private var var_1351:int;
      
      private var var_2017:int;
      
      private var var_1080:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1349 = param1.readString();
         var_2017 = param1.readInteger();
         var_1079 = param1.readString();
         var_1080 = param1.readInteger();
         var_1351 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1080;
      }
      
      public function get productType() : String
      {
         return var_1349;
      }
      
      public function get expiration() : int
      {
         return var_1351;
      }
      
      public function get furniClassId() : int
      {
         return var_2017;
      }
      
      public function get extraParam() : String
      {
         return var_1079;
      }
   }
}
