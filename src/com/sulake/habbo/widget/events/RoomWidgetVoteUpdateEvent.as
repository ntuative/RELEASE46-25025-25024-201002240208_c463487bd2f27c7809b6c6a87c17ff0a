package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_116:String = "RWPUE_VOTE_RESULT";
      
      public static const const_110:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1185:int;
      
      private var var_1013:String;
      
      private var var_684:Array;
      
      private var var_987:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1013 = param2;
         var_987 = param3;
         var_684 = param4;
         if(var_684 == null)
         {
            var_684 = [];
         }
         var_1185 = param5;
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
