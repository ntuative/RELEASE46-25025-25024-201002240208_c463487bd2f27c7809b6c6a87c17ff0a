package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_411:uint;
      
      private var var_1028:IUnknown;
      
      private var var_1262:String;
      
      private var var_1027:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1027 = param1;
         var_1262 = getQualifiedClassName(var_1027);
         var_1028 = param2;
         var_411 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1027;
      }
      
      public function get disposed() : Boolean
      {
         return var_1028 == null;
      }
      
      public function get references() : uint
      {
         return var_411;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_411) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1028;
      }
      
      public function get iis() : String
      {
         return var_1262;
      }
      
      public function reserve() : uint
      {
         return ++var_411;
      }
      
      public function dispose() : void
      {
         var_1027 = null;
         var_1262 = null;
         var_1028 = null;
         var_411 = 0;
      }
   }
}
