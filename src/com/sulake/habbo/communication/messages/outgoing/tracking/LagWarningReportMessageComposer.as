package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LagWarningReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_1918:int;
      
      private var var_1919:int;
      
      public function LagWarningReportMessageComposer(param1:int, param2:int)
      {
         super();
         var_1918 = param1;
         var_1919 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1918,var_1919];
      }
   }
}
