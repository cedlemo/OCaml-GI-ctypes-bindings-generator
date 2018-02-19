open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_flow_box_new return type object not handled*)
(*Not implemented gtk_flow_box_bind_model type interface not implemented*)
let get_activate_on_single_click =
  foreign "gtk_flow_box_get_activate_on_single_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_flow_box_get_child_at_index return type object not handled*)
(*Not implemented gtk_flow_box_get_child_at_pos return type object not handled*)
let get_column_spacing =
  foreign "gtk_flow_box_get_column_spacing" (ptr t_typ @-> returning (uint32_t))
let get_homogeneous =
  foreign "gtk_flow_box_get_homogeneous" (ptr t_typ @-> returning (bool))
let get_max_children_per_line =
  foreign "gtk_flow_box_get_max_children_per_line" (ptr t_typ @-> returning (uint32_t))
let get_min_children_per_line =
  foreign "gtk_flow_box_get_min_children_per_line" (ptr t_typ @-> returning (uint32_t))
let get_row_spacing =
  foreign "gtk_flow_box_get_row_spacing" (ptr t_typ @-> returning (uint32_t))
let get_selected_children =
  foreign "gtk_flow_box_get_selected_children" (ptr t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_flow_box_get_selection_mode" (ptr t_typ @-> returning (Selection_mode.t_view))
(*Not implemented gtk_flow_box_insert type object not implemented*)
let invalidate_filter =
  foreign "gtk_flow_box_invalidate_filter" (ptr t_typ @-> returning (void))
let invalidate_sort =
  foreign "gtk_flow_box_invalidate_sort" (ptr t_typ @-> returning (void))
let select_all =
  foreign "gtk_flow_box_select_all" (ptr t_typ @-> returning (void))
(*Not implemented gtk_flow_box_select_child type object not implemented*)
(*Not implemented gtk_flow_box_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_flow_box_set_activate_on_single_click" (ptr t_typ @-> bool @-> returning (void))
let set_column_spacing =
  foreign "gtk_flow_box_set_column_spacing" (ptr t_typ @-> uint32_t @-> returning (void))
(*Not implemented gtk_flow_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_flow_box_set_hadjustment type object not implemented*)
let set_homogeneous =
  foreign "gtk_flow_box_set_homogeneous" (ptr t_typ @-> bool @-> returning (void))
let set_max_children_per_line =
  foreign "gtk_flow_box_set_max_children_per_line" (ptr t_typ @-> uint32_t @-> returning (void))
let set_min_children_per_line =
  foreign "gtk_flow_box_set_min_children_per_line" (ptr t_typ @-> uint32_t @-> returning (void))
let set_row_spacing =
  foreign "gtk_flow_box_set_row_spacing" (ptr t_typ @-> uint32_t @-> returning (void))
let set_selection_mode =
  foreign "gtk_flow_box_set_selection_mode" (ptr t_typ @-> Selection_mode.t_view @-> returning (void))
(*Not implemented gtk_flow_box_set_sort_func type callback not implemented*)
(*Not implemented gtk_flow_box_set_vadjustment type object not implemented*)
let unselect_all =
  foreign "gtk_flow_box_unselect_all" (ptr t_typ @-> returning (void))
(*Not implemented gtk_flow_box_unselect_child type object not implemented*)
