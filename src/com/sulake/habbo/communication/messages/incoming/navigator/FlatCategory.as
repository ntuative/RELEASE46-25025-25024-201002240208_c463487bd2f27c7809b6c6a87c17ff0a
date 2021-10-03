package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_334:Boolean;
      
      private var var_1202:int;
      
      private var var_1392:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1202 = param1.readInteger();
         var_1392 = param1.readString();
         var_334 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_334;
      }
      
      public function get nodeName() : String
      {
         return var_1392;
      }
      
      public function get nodeId() : int
      {
         return var_1202;
      }
   }
}
