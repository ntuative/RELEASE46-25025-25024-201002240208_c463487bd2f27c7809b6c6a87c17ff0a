package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1281:Boolean;
      
      private var var_1838:String;
      
      private var _frames:XMLList;
      
      private var var_961:String = "-1";
      
      private var var_744:String;
      
      private var var_171:int = 120;
      
      private var var_1180:String = "-1";
      
      private var var_1181:String;
      
      private var var_1837:Boolean;
      
      private var var_1426:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1281 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1837 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_171 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1181 = param1.@namebase;
         }
         else
         {
            var_1181 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_961 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1180 = param1.@nextState;
         }
         else
         {
            var_1180 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1426 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1838 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_744 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_961 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1837;
      }
      
      public function get defaultState() : String
      {
         return var_1426;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1426 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1838;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_171;
      }
      
      public function get loop() : Boolean
      {
         return var_1281;
      }
      
      public function get nextState() : String
      {
         return var_1180;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_744;
      }
      
      public function get stateOver() : String
      {
         return var_961;
      }
      
      public function get nameBase() : String
      {
         return var_1181;
      }
   }
}
