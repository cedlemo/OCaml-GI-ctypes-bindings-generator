open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_list_box_new return type object not handled*)
(*Not implemented gtk_list_box_bind_model type interface not implemented*)
(*Not implemented gtk_list_box_drag_highlight_row type object not implemented*)
val drag_unhighlight_row:
  t structure ptr -> unit
val get_activate_on_single_click:
  t structure ptr -> bool
(*Not implemented gtk_list_box_get_adjustment return type object not handled*)
(*Not implemented gtk_list_box_get_row_at_index return type object not handled*)
(*Not implemented gtk_list_box_get_row_at_y return type object not handled*)
(*Not implemented gtk_list_box_get_selected_row return type object not handled*)
val get_selected_rows:
  t structure ptr -> List.t structure ptr
val get_selection_mode:
  t structure ptr -> Selection_mode.t
(*Not implemented gtk_list_box_insert type object not implemented*)
val invalidate_filter:
  t structure ptr -> unit
val invalidate_headers:
  t structure ptr -> unit
val invalidate_sort:
  t structure ptr -> unit
(*Not implemented gtk_list_box_prepend type object not implemented*)
val select_all:
  t structure ptr -> unit
(*Not implemented gtk_list_box_select_row type object not implemented*)
(*Not implemented gtk_list_box_selected_foreach type callback not implemented*)
val set_activate_on_single_click:
  t structure ptr -> bool -> unit
(*Not implemented gtk_list_box_set_adjustment type object not implemented*)
(*Not implemented gtk_list_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_list_box_set_header_func type callback not implemented*)
(*Not implemented gtk_list_box_set_placeholder type object not implemented*)
val set_selection_mode:
  t structure ptr -> Selection_mode.t -> unit
(*Not implemented gtk_list_box_set_sort_func type callback not implemented*)
val unselect_all:
  t structure ptr -> unit
(*Not implemented gtk_list_box_unselect_row type object not implemented*)
