package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_116:String = "RSPE_VOTE_RESULT";
      
      public static const const_110:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1185:int = 0;
      
      private var var_1013:String = "";
      
      private var var_684:Array;
      
      private var var_987:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_987 = [];
         var_684 = [];
         super(param1,param2,param7,param8);
         var_1013 = param3;
         var_987 = param4;
         var_684 = param5;
         if(var_684 == null)
         {
            var_684 = [];
         }
         var_1185 = param6;
      }
      
      public function get votes() : Array
      {
         return var_684.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1185;
      }
      
      public function get question() : String
      {
         return var_1013;
      }
      
      public function get choices() : Array
      {
         return var_987.slice();
      }
   }
}
