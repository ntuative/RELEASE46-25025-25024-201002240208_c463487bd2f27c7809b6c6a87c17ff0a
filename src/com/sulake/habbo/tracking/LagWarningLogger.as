package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_874:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1307:Boolean = true;
      
      private var var_1167:int = 0;
      
      private var var_844:int = 0;
      
      private var var_1165:int = 0;
      
      private var var_843:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1166:int = 15;
      
      private var var_174:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1164:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1165 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1307)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_844,var_843);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1167;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_844 == 0 && var_843 == 0;
      }
      
      private function resetLog() : void
      {
         var_844 = 0;
         var_843 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1307)
         {
            return;
         }
         if(getTimer() - var_1165 > var_1164 * 1000 && var_1167 < var_1166)
         {
            var_1165 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_174 = param1;
         var_1164 = int(var_174.getKey("lagwarninglog.interval","60"));
         var_1166 = int(var_174.getKey("lagwarninglog.reportlimit","15"));
         var_1307 = Boolean(int(var_174.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_843 += 1;
            case const_874:
               var_844 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
