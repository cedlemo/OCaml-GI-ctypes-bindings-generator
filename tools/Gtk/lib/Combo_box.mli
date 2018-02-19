open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_combo_box_new return type object not handled*)
(*Not implemented gtk_combo_box_new_with_area type object not implemented*)
(*Not implemented gtk_combo_box_new_with_area_and_entry type object not implemented*)
(*Not implemented gtk_combo_box_new_with_entry return type object not handled*)
(*Not implemented gtk_combo_box_new_with_model type interface not implemented*)
(*Not implemented gtk_combo_box_new_with_model_and_entry type interface not implemented*)
val get_active:
  t structure ptr -> int32
val get_active_id:
  t structure ptr -> string option
val get_active_iter :
  t structure ptr -> (bool * Tree_iter.t structure)
val get_add_tearoffs:
  t structure ptr -> bool
val get_button_sensitivity:
  t structure ptr -> Sensitivity_type.t
val get_column_span_column:
  t structure ptr -> int32
val get_entry_text_column:
  t structure ptr -> int32
val get_focus_on_click:
  t structure ptr -> bool
val get_has_entry:
  t structure ptr -> bool
val get_id_column:
  t structure ptr -> int32
(*Not implemented gtk_combo_box_get_model return type interface not handled*)
(*Not implemented gtk_combo_box_get_popup_accessible return type object not handled*)
val get_popup_fixed_width:
  t structure ptr -> bool
val get_row_span_column:
  t structure ptr -> int32
val get_title:
  t structure ptr -> string option
val get_wrap_width:
  t structure ptr -> int32
val popdown:
  t structure ptr -> unit
val popup:
  t structure ptr -> unit
(*Not implemented gtk_combo_box_popup_for_device type object not implemented*)
val set_active:
  t structure ptr -> int32 -> unit
val set_active_id:
  t structure ptr -> string option -> bool
val set_active_iter:
  t structure ptr -> Tree_iter.t structure ptr option -> unit
val set_add_tearoffs:
  t structure ptr -> bool -> unit
val set_button_sensitivity:
  t structure ptr -> Sensitivity_type.t -> unit
val set_column_span_column:
  t structure ptr -> int32 -> unit
val set_entry_text_column:
  t structure ptr -> int32 -> unit
val set_focus_on_click:
  t structure ptr -> bool -> unit
val set_id_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_combo_box_set_model type interface not implemented*)
val set_popup_fixed_width:
  t structure ptr -> bool -> unit
(*Not implemented gtk_combo_box_set_row_separator_func type callback not implemented*)
val set_row_span_column:
  t structure ptr -> int32 -> unit
val set_title:
  t structure ptr -> string -> unit
val set_wrap_width:
  t structure ptr -> int32 -> unit
