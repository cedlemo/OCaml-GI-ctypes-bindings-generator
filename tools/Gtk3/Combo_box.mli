open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_area :
  Cell_area.t ptr -> Widget.t ptr
val create_with_area_and_entry :
  Cell_area.t ptr -> Widget.t ptr
val create_with_entry :
  unit -> Widget.t ptr
(*Not implemented gtk_combo_box_new_with_model type interface not implemented*)
(*Not implemented gtk_combo_box_new_with_model_and_entry type interface not implemented*)
val get_active :
  t -> int32
val get_active_id :
  t -> string option
val get_active_iter :
  t -> (bool * Tree_iter.t structure)
val get_add_tearoffs :
  t -> bool
val get_button_sensitivity :
  t -> Sensitivity_type.t
val get_column_span_column :
  t -> int32
val get_entry_text_column :
  t -> int32
val get_focus_on_click :
  t -> bool
val get_has_entry :
  t -> bool
val get_id_column :
  t -> int32
(*Not implemented gtk_combo_box_get_model return type interface not handled*)
val get_popup_accessible :
  t -> Object.t ptr
val get_popup_fixed_width :
  t -> bool
val get_row_span_column :
  t -> int32
val get_title :
  t -> string option
val get_wrap_width :
  t -> int32
val popdown :
  t -> unit
val popup :
  t -> unit
val popup_for_device :
  t -> Device.t ptr -> unit
val set_active :
  t -> int32 -> unit
val set_active_id :
  t -> string option -> bool
val set_active_iter :
  t -> Tree_iter.t structure ptr option -> unit
val set_add_tearoffs :
  t -> bool -> unit
val set_button_sensitivity :
  t -> Sensitivity_type.t -> unit
val set_column_span_column :
  t -> int32 -> unit
val set_entry_text_column :
  t -> int32 -> unit
val set_focus_on_click :
  t -> bool -> unit
val set_id_column :
  t -> int32 -> unit
(*Not implemented gtk_combo_box_set_model type interface not implemented*)
val set_popup_fixed_width :
  t -> bool -> unit
(*Not implemented gtk_combo_box_set_row_separator_func type callback not implemented*)
val set_row_span_column :
  t -> int32 -> unit
val set_title :
  t -> string -> unit
val set_wrap_width :
  t -> int32 -> unit
