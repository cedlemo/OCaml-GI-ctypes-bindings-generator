open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_list_box_new return type object not handled*)
(*Not implemented gtk_list_box_bind_model type interface not implemented*)
(*Not implemented gtk_list_box_drag_highlight_row type object not implemented*)
let drag_unhighlight_row =
  foreign "gtk_list_box_drag_unhighlight_row" (ptr t_typ @-> returning (void))
let get_activate_on_single_click =
  foreign "gtk_list_box_get_activate_on_single_click" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_list_box_get_adjustment return type object not handled*)
(*Not implemented gtk_list_box_get_row_at_index return type object not handled*)
(*Not implemented gtk_list_box_get_row_at_y return type object not handled*)
(*Not implemented gtk_list_box_get_selected_row return type object not handled*)
let get_selected_rows =
  foreign "gtk_list_box_get_selected_rows" (ptr t_typ @-> returning (ptr List.t_typ))
let get_selection_mode =
  foreign "gtk_list_box_get_selection_mode" (ptr t_typ @-> returning (Selection_mode.t_view))
(*Not implemented gtk_list_box_insert type object not implemented*)
let invalidate_filter =
  foreign "gtk_list_box_invalidate_filter" (ptr t_typ @-> returning (void))
let invalidate_headers =
  foreign "gtk_list_box_invalidate_headers" (ptr t_typ @-> returning (void))
let invalidate_sort =
  foreign "gtk_list_box_invalidate_sort" (ptr t_typ @-> returning (void))
(*Not implemented gtk_list_box_prepend type object not implemented*)
let select_all =
  foreign "gtk_list_box_select_all" (ptr t_typ @-> returning (void))
(*Not implemented gtk_list_box_select_row type object not implemented*)
(*Not implemented gtk_list_box_selected_foreach type callback not implemented*)
let set_activate_on_single_click =
  foreign "gtk_list_box_set_activate_on_single_click" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_list_box_set_adjustment type object not implemented*)
(*Not implemented gtk_list_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_list_box_set_header_func type callback not implemented*)
(*Not implemented gtk_list_box_set_placeholder type object not implemented*)
let set_selection_mode =
  foreign "gtk_list_box_set_selection_mode" (ptr t_typ @-> Selection_mode.t_view @-> returning (void))
(*Not implemented gtk_list_box_set_sort_func type callback not implemented*)
let unselect_all =
  foreign "gtk_list_box_unselect_all" (ptr t_typ @-> returning (void))
(*Not implemented gtk_list_box_unselect_row type object not implemented*)
