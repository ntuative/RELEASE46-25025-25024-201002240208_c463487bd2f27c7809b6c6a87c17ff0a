package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   
   public class TraxPreviewCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1353:IButtonWindow;
      
      public function TraxPreviewCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         var_1353 = _window.findChildByName("listen") as IButtonWindow;
         Logger.log("Trax listener found button: " + var_1353);
         if(var_1353 != null)
         {
            var_1353.disable();
         }
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
