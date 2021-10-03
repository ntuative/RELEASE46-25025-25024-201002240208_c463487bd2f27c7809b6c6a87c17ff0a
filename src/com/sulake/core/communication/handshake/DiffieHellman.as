package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1521:BigInteger;
      
      private var var_956:BigInteger;
      
      private var var_2071:BigInteger;
      
      private var var_1522:BigInteger;
      
      private var var_2072:BigInteger;
      
      private var var_1917:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1521 = param1;
         var_2071 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2072.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1522 = new BigInteger();
         var_1522.fromRadix(param1,param2);
         var_2072 = var_1522.modPow(var_956,var_1521);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1917.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_956 = new BigInteger();
         var_956.fromRadix(param1,param2);
         var_1917 = var_2071.modPow(var_956,var_1521);
         return true;
      }
   }
}
