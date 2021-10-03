package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1921:String;
      
      private var var_1022:String;
      
      private var var_1668:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1668 = param1.readInteger();
         var_1921 = param1.readString();
         var_1022 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_1022;
      }
      
      public function get figureString() : String
      {
         return var_1921;
      }
      
      public function get slotId() : int
      {
         return var_1668;
      }
   }
}
