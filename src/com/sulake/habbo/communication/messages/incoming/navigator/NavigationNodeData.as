package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1202:int;
      
      private var var_1392:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1202 = param1;
         var_1392 = param2;
         Logger.log("READ NODE: " + var_1202 + ", " + var_1392);
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
