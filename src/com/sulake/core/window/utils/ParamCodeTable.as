package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_119;
         param1["bound_to_parent_rect"] = const_84;
         param1["child_window"] = const_896;
         param1["embedded_controller"] = const_303;
         param1["resize_to_accommodate_children"] = const_58;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_619;
         param1["mouse_dragging_target"] = const_206;
         param1["mouse_dragging_trigger"] = const_335;
         param1["mouse_scaling_target"] = const_240;
         param1["mouse_scaling_trigger"] = const_387;
         param1["horizontal_mouse_scaling_trigger"] = const_190;
         param1["vertical_mouse_scaling_trigger"] = const_189;
         param1["observe_parent_input_events"] = const_891;
         param1["optimize_region_to_layout_size"] = const_392;
         param1["parent_window"] = const_890;
         param1["relative_horizontal_scale_center"] = const_172;
         param1["relative_horizontal_scale_fixed"] = const_127;
         param1["relative_horizontal_scale_move"] = const_318;
         param1["relative_horizontal_scale_strech"] = const_236;
         param1["relative_scale_center"] = const_954;
         param1["relative_scale_fixed"] = const_612;
         param1["relative_scale_move"] = const_791;
         param1["relative_scale_strech"] = const_861;
         param1["relative_vertical_scale_center"] = const_161;
         param1["relative_vertical_scale_fixed"] = const_124;
         param1["relative_vertical_scale_move"] = const_327;
         param1["relative_vertical_scale_strech"] = const_264;
         param1["on_resize_align_left"] = const_545;
         param1["on_resize_align_right"] = const_356;
         param1["on_resize_align_center"] = const_351;
         param1["on_resize_align_top"] = const_592;
         param1["on_resize_align_bottom"] = const_399;
         param1["on_resize_align_middle"] = const_447;
         param1["on_accommodate_align_left"] = const_944;
         param1["on_accommodate_align_right"] = const_480;
         param1["on_accommodate_align_center"] = const_608;
         param1["on_accommodate_align_top"] = const_943;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_728;
         param1["route_input_events_to_parent"] = const_472;
         param1["use_parent_graphic_context"] = const_29;
         param1["draggable_with_mouse"] = const_929;
         param1["scalable_with_mouse"] = const_823;
         param1["reflect_horizontal_resize_to_parent"] = const_432;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_259;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
