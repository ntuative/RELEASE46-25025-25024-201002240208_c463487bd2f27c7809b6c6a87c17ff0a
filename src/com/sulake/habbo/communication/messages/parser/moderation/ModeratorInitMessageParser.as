package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1804:Boolean;
      
      private var var_1416:Array;
      
      private var var_1799:Boolean;
      
      private var var_1803:Boolean;
      
      private var var_1801:Boolean;
      
      private var var_152:Array;
      
      private var var_1797:Boolean;
      
      private var var_1798:Boolean;
      
      private var var_1417:Array;
      
      private var var_1802:Boolean;
      
      private var var_1800:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1800;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1804;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1799;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1797;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1798;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1416;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_152 = [];
         var_1416 = [];
         _roomMessageTemplates = [];
         var_1417 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_152.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1416.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1417.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1797 = param1.readBoolean();
         var_1801 = param1.readBoolean();
         var_1799 = param1.readBoolean();
         var_1803 = param1.readBoolean();
         var_1800 = param1.readBoolean();
         var_1798 = param1.readBoolean();
         var_1804 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1802 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1803;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1417;
      }
      
      public function get issues() : Array
      {
         return var_152;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1802;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1801;
      }
   }
}
