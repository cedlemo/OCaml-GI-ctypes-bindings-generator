open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_list_box_new" (void @-> returning (ptr Widget.t_typ))
(*Not implemented gtk_list_box_bind_model type interface not implemented*)
let drag_highlight_row =
  foreign "gtk_list_box_drag_highlight_row" (t_typ @-> ptr List_box_row.t_typ @-> returning (void))
let drag_unhighlight_row =
  foreign "gtk_list_box_drag_unhighlight_row" (t_typ @-> returning (void))
let get_activate_on_single_click =
  foreign "gtk_list_box_get_activate_on_single_click" (t_typ @-> returning (bool))
let get_adjustment =
  foreign "gtk_list_box_get_adjustment" (t_typ @-> returning (ptr Adjustment.t_typ))
let get_row_at_index =
  foreign "gtk_list_box_get_row_at_index" (t_typ @-> int32_t @-> returning (ptr_opt List_box_row.t_typ))
let get_row_at_y =
  foreign "gtk_list_box_get_row_at_y" (t_typ @-> int32_t @-> returning (ptr_opt List_box_row.t_typ))
let get_selected_row =
  foreign "gtk_list_box_get_selected_row" (t_typ @-> returning (ptr List_box_row.t_typ))
let get_selected_rows =
  foreign "gtk_list_box_get_selected_rows" (t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_list_box_get_selection_mode" (t_typ @-> returning (Selection_mode.t_view))
let insert =
  foreign "gtk_list_box_insert" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> returning (void))
let invalidate_filter =
  foreign "gtk_list_box_invalidate_filter" (t_typ @-> returning (void))
let invalidate_headers =
  foreign "gtk_list_box_invalidate_headers" (t_typ @-> returning (void))
let invalidate_sort =
  foreign "gtk_list_box_invalidate_sort" (t_typ @-> returning (void))
let prepend =
  foreign "gtk_list_box_prepend" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let select_all =
  foreign "gtk_list_box_select_all" (t_typ @-> returning (void))
let select_row =
  foreign "gtk_list_box_select_row" (t_typ @-> ptr_opt List_box_row.t_typ @-> returning (void))
(*Not implemented gtk_list_box_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_list_box_set_activate_on_single_click" (t_typ @-> bool @-> returning (void))
let set_adjustment =
  foreign "gtk_list_box_set_adjustment" (t_typ @-> ptr_opt Adjustment.t_typ @-> returning (void))
(*Not implemented gtk_list_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_list_box_set_header_func type callback not implemented*)
let set_placeholder =
  foreign "gtk_list_box_set_placeholder" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_selection_mode =
  foreign "gtk_list_box_set_selection_mode" (t_typ @-> Selection_mode.t_view @-> returning (void))
(*Not implemented gtk_list_box_set_sort_func type callback not implemented*)
let unselect_all =
  foreign "gtk_list_box_unselect_all" (t_typ @-> returning (void))
let unselect_row =
  foreign "gtk_list_box_unselect_row" (t_typ @-> ptr List_box_row.t_typ @-> returning (void))
