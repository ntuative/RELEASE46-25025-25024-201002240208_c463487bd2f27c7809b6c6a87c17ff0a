package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_868:String = "price_type_none";
      
      public static const const_357:String = "pricing_model_multi";
      
      public static const const_366:String = "price_type_credits";
      
      public static const const_354:String = "price_type_credits_and_pixels";
      
      public static const const_445:String = "pricing_model_bundle";
      
      public static const const_481:String = "pricing_model_single";
      
      public static const const_582:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1347:String = "pricing_model_unknown";
      
      public static const const_364:String = "price_type_pixels";
       
      
      private var var_791:int;
      
      private var _offerId:int;
      
      private var var_792:int;
      
      private var var_384:String;
      
      private var var_553:String;
      
      private var var_1822:int;
      
      private var var_709:ICatalogPage;
      
      private var var_1169:String;
      
      private var var_385:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1169 = param1.localizationId;
         var_791 = param1.priceInCredits;
         var_792 = param1.priceInPixels;
         var_709 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_384;
      }
      
      public function get page() : ICatalogPage
      {
         return var_709;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1822 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_385;
      }
      
      public function get localizationId() : String
      {
         return var_1169;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_792;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1169 = "";
         var_791 = 0;
         var_792 = 0;
         var_709 = null;
         if(var_385 != null)
         {
            var_385.dispose();
            var_385 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_553;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1822;
      }
      
      public function get priceInCredits() : int
      {
         return var_791;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_384 = const_481;
            }
            else
            {
               var_384 = const_357;
            }
         }
         else if(param1.length > 1)
         {
            var_384 = const_445;
         }
         else
         {
            var_384 = const_1347;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_384)
         {
            case const_481:
               var_385 = new SingleProductContainer(this,param1);
               break;
            case const_357:
               var_385 = new MultiProductContainer(this,param1);
               break;
            case const_445:
               var_385 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_384);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_791 > 0 && var_792 > 0)
         {
            var_553 = const_354;
         }
         else if(var_791 > 0)
         {
            var_553 = const_366;
         }
         else if(var_792 > 0)
         {
            var_553 = const_364;
         }
         else
         {
            var_553 = const_868;
         }
      }
   }
}
