package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1147:String;
      
      private var _disposed:Boolean;
      
      private var var_1400:String;
      
      private var var_1146:int;
      
      private var var_47:ModerationManager;
      
      private var var_752:IDropMenuWindow;
      
      private var var_380:ITextFieldWindow;
      
      private var var_50:IFrameWindow;
      
      private var var_311:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_47 = param1;
         var_1146 = param2;
         var_1400 = param3;
         var_1147 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_208)
         {
            return;
         }
         if(!var_311)
         {
            return;
         }
         var_380.text = "";
         var_311 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_50;
      }
      
      public function getId() : String
      {
         return var_1400;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_311 || false)
         {
            var_47.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_47.connection.send(new ModMessageMessageComposer(var_1146,var_380.text,var_1147));
         this.dispose();
      }
      
      public function show() : void
      {
         var_50 = IFrameWindow(var_47.getXmlWindow("send_msgs"));
         var_50.caption = "Msg To: " + var_1400;
         var_50.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_380 = ITextFieldWindow(var_50.findChildByName("message_input"));
         var_380.procedure = onInputClick;
         var_752 = IDropMenuWindow(var_50.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_752);
         var_752.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_50.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_50.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_47.initMsg.messageTemplates.length);
         param1.populate(var_47.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_50 != null)
         {
            var_50.destroy();
            var_50 = null;
         }
         var_752 = null;
         var_380 = null;
         var_47 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_51)
         {
            return;
         }
         var _loc3_:String = var_47.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_311 = false;
            var_380.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1200;
      }
   }
}
