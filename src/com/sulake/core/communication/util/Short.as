package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_689:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_689 = new ByteArray();
         var_689.writeShort(param1);
         var_689.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_689.position = 0;
         if(false)
         {
            _loc1_ = var_689.readShort();
            var_689.position = 0;
         }
         return _loc1_;
      }
   }
}
