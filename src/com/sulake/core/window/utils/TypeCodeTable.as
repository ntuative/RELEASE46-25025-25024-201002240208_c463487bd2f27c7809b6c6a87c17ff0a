package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_530;
         param1["bitmap"] = const_678;
         param1["border"] = const_692;
         param1["border_notify"] = const_1217;
         param1["button"] = const_415;
         param1["button_thick"] = const_588;
         param1["button_icon"] = const_1248;
         param1["button_group_left"] = const_596;
         param1["button_group_center"] = const_536;
         param1["button_group_right"] = const_664;
         param1["canvas"] = const_601;
         param1["checkbox"] = const_688;
         param1["closebutton"] = const_930;
         param1["container"] = const_298;
         param1["container_button"] = const_641;
         param1["display_object_wrapper"] = const_569;
         param1["dropmenu"] = const_467;
         param1["dropmenu_item"] = const_412;
         param1["frame"] = const_315;
         param1["frame_notify"] = const_1259;
         param1["header"] = const_700;
         param1["icon"] = const_969;
         param1["itemgrid"] = const_886;
         param1["itemgrid_horizontal"] = const_404;
         param1["itemgrid_vertical"] = const_519;
         param1["itemlist"] = const_917;
         param1["itemlist_horizontal"] = const_301;
         param1["itemlist_vertical"] = const_299;
         param1["maximizebox"] = const_1353;
         param1["menu"] = const_1375;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_810;
         param1["minimizebox"] = const_1320;
         param1["notify"] = const_1255;
         param1["null"] = const_540;
         param1["password"] = const_583;
         param1["radiobutton"] = const_578;
         param1["region"] = const_401;
         param1["restorebox"] = const_1210;
         param1["scaler"] = const_974;
         param1["scaler_horizontal"] = const_1173;
         param1["scaler_vertical"] = const_1242;
         param1["scrollbar_horizontal"] = const_443;
         param1["scrollbar_vertical"] = const_715;
         param1["scrollbar_slider_button_up"] = const_849;
         param1["scrollbar_slider_button_down"] = const_859;
         param1["scrollbar_slider_button_left"] = const_842;
         param1["scrollbar_slider_button_right"] = const_976;
         param1["scrollbar_slider_bar_horizontal"] = const_939;
         param1["scrollbar_slider_bar_vertical"] = const_1015;
         param1["scrollbar_slider_track_horizontal"] = const_854;
         param1["scrollbar_slider_track_vertical"] = const_828;
         param1["scrollable_itemlist"] = const_1334;
         param1["scrollable_itemlist_vertical"] = const_383;
         param1["scrollable_itemlist_horizontal"] = const_799;
         param1["selector"] = const_565;
         param1["selector_list"] = const_707;
         param1["submenu"] = const_810;
         param1["tab_button"] = const_613;
         param1["tab_container_button"] = const_807;
         param1["tab_context"] = const_386;
         param1["tab_content"] = const_924;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_631;
         param1["input"] = const_690;
         param1["toolbar"] = const_1129;
         param1["tooltip"] = const_297;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
