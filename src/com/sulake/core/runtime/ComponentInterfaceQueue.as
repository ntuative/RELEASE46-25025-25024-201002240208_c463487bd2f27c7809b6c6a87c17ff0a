package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1196:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_816:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1196 = param1;
         var_816 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_816;
      }
      
      public function get identifier() : IID
      {
         return var_1196;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1196 = null;
            while(false)
            {
               var_816.pop();
            }
            var_816 = null;
         }
      }
   }
}
