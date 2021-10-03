package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_889:int;
      
      private var _right:int;
      
      private var var_888:int;
      
      private var var_887:int;
      
      private var var_181:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_888 = param1;
         var_887 = param2;
         _right = param3;
         var_889 = param4;
         var_181 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_889 = param1;
         var_181(this);
      }
      
      public function get left() : int
      {
         return var_888;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_888 == 0 && _right == 0 && var_887 == 0 && var_889 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_887 = param1;
         var_181(this);
      }
      
      public function get top() : int
      {
         return var_887;
      }
      
      public function set left(param1:int) : void
      {
         var_888 = param1;
         var_181(this);
      }
      
      public function get bottom() : int
      {
         return var_889;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_888,var_887,_right,var_889,param1);
      }
      
      public function dispose() : void
      {
         var_181 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_181(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
