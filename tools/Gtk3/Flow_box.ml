open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_flow_box_new" (void @-> returning (ptr Widget.t_typ))
(*Not implemented gtk_flow_box_bind_model type interface not implemented*)
let get_activate_on_single_click =
  foreign "gtk_flow_box_get_activate_on_single_click" (t_typ @-> returning (bool))
let get_child_at_index =
  foreign "gtk_flow_box_get_child_at_index" (t_typ @-> int32_t @-> returning (ptr_opt Flow_box_child.t_typ))
let get_child_at_pos =
  foreign "gtk_flow_box_get_child_at_pos" (t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Flow_box_child.t_typ))
let get_column_spacing =
  foreign "gtk_flow_box_get_column_spacing" (t_typ @-> returning (uint32_t))
let get_homogeneous =
  foreign "gtk_flow_box_get_homogeneous" (t_typ @-> returning (bool))
let get_max_children_per_line =
  foreign "gtk_flow_box_get_max_children_per_line" (t_typ @-> returning (uint32_t))
let get_min_children_per_line =
  foreign "gtk_flow_box_get_min_children_per_line" (t_typ @-> returning (uint32_t))
let get_row_spacing =
  foreign "gtk_flow_box_get_row_spacing" (t_typ @-> returning (uint32_t))
let get_selected_children =
  foreign "gtk_flow_box_get_selected_children" (t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_flow_box_get_selection_mode" (t_typ @-> returning (Selection_mode.t_view))
let insert =
  foreign "gtk_flow_box_insert" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> returning (void))
let invalidate_filter =
  foreign "gtk_flow_box_invalidate_filter" (t_typ @-> returning (void))
let invalidate_sort =
  foreign "gtk_flow_box_invalidate_sort" (t_typ @-> returning (void))
let select_all =
  foreign "gtk_flow_box_select_all" (t_typ @-> returning (void))
let select_child =
  foreign "gtk_flow_box_select_child" (t_typ @-> ptr Flow_box_child.t_typ @-> returning (void))
(*Not implemented gtk_flow_box_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_flow_box_set_activate_on_single_click" (t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_flow_box_set_column_spacing" (t_typ @-> uint32_t @-> returning (void))
(*Not implemented gtk_flow_box_set_filter_func type callback not implemented*)
let set_hadjustment =
  foreign "gtk_flow_box_set_hadjustment" (t_typ @-> ptr Adjustment.t_typ @-> returning (void))
let set_homogeneous =
  foreign "gtk_flow_box_set_homogeneous" (t_typ @-> bool @-> returning (void))
let set_max_children_per_line =
  foreign "gtk_flow_box_set_max_children_per_line" (t_typ @-> uint32_t @-> returning (void))
let set_min_children_per_line =
  foreign "gtk_flow_box_set_min_children_per_line" (t_typ @-> uint32_t @-> returning (void))
let set_row_spacing =
  foreign "gtk_flow_box_set_row_spacing" (t_typ @-> uint32_t @-> returning (void))
let set_selection_mode =
  foreign "gtk_flow_box_set_selection_mode" (t_typ @-> Selection_mode.t_view @-> returning (void))
(*Not implemented gtk_flow_box_set_sort_func type callback not implemented*)
let set_vadjustment =
  foreign "gtk_flow_box_set_vadjustment" (t_typ @-> ptr Adjustment.t_typ @-> returning (void))
let unselect_all =
  foreign "gtk_flow_box_unselect_all" (t_typ @-> returning (void))
let unselect_child =
  foreign "gtk_flow_box_unselect_child" (t_typ @-> ptr Flow_box_child.t_typ @-> returning (void))
