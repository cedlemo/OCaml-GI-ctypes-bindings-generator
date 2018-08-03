open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
(*Not implemented gtk_list_box_bind_model type interface not implemented*)
val drag_highlight_row :
  t -> List_box_row.t ptr -> unit
val drag_unhighlight_row :
  t -> unit
val get_activate_on_single_click :
  t -> bool
val get_adjustment :
  t -> Adjustment.t ptr
val get_row_at_index :
  t -> int32 -> List_box_row.t ptr option
val get_row_at_y :
  t -> int32 -> List_box_row.t ptr option
val get_selected_row :
  t -> List_box_row.t ptr
val get_selected_rows :
  t -> List.t structure (* Not implemented : interface *) ptr
val get_selection_mode :
  t -> Selection_mode.t
val insert :
  t -> Widget.t ptr -> int32 -> unit
val invalidate_filter :
  t -> unit
val invalidate_headers :
  t -> unit
val invalidate_sort :
  t -> unit
val prepend :
  t -> Widget.t ptr -> unit
val select_all :
  t -> unit
val select_row :
  t -> List_box_row.t ptr option -> unit
(*Not implemented gtk_list_box_selected_foreach type callback not implemented*)
val set_activate_on_single_click :
  t -> bool -> unit
val set_adjustment :
  t -> Adjustment.t ptr option -> unit
(*Not implemented gtk_list_box_set_filter_func type callback not implemented*)
(*Not implemented gtk_list_box_set_header_func type callback not implemented*)
val set_placeholder :
  t -> Widget.t ptr option -> unit
val set_selection_mode :
  t -> Selection_mode.t -> unit
(*Not implemented gtk_list_box_set_sort_func type callback not implemented*)
val unselect_all :
  t -> unit
val unselect_row :
  t -> List_box_row.t ptr -> unit
