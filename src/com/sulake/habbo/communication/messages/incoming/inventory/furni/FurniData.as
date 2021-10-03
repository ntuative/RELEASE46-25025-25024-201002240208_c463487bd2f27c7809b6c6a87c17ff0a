package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1370:String;
      
      private var var_1045:String;
      
      private var var_1746:Boolean;
      
      private var var_1401:int;
      
      private var var_1670:int;
      
      private var var_1745:Boolean;
      
      private var var_1668:String = "";
      
      private var var_1672:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1319:int;
      
      private var var_1671:Boolean;
      
      private var var_1665:int = -1;
      
      private var var_1669:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1670 = param1;
         var_1045 = param2;
         _objId = param3;
         var_1319 = param4;
         _category = param5;
         var_1370 = param6;
         var_1746 = param7;
         var_1672 = param8;
         var_1671 = param9;
         var_1745 = param10;
         var_1669 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1668;
      }
      
      public function get extra() : int
      {
         return var_1401;
      }
      
      public function get classId() : int
      {
         return var_1319;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1745;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1746;
      }
      
      public function get stripId() : int
      {
         return var_1670;
      }
      
      public function get stuffData() : String
      {
         return var_1370;
      }
      
      public function get songId() : int
      {
         return var_1665;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1668 = param1;
         var_1401 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1045;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1669;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1671;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1672;
      }
   }
}
