package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_1086:PetData;
      
      private var var_2068:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1086 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_2068;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1086 = new PetData(param1);
         var_2068 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_1086;
      }
   }
}
