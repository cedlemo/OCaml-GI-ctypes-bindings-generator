open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_label_new return type object not handled*)
(*Not implemented gtk_label_new_with_mnemonic return type object not handled*)
val get_angle:
  t structure ptr -> float
val get_attributes:
  t structure ptr -> Attr_list.t structure ptr option
val get_current_uri:
  t structure ptr -> string option
val get_ellipsize:
  t structure ptr -> Ellipsize_mode.t
val get_justify:
  t structure ptr -> Justification.t
val get_label:
  t structure ptr -> string option
(*Not implemented gtk_label_get_layout return type object not handled*)
val get_layout_offsets :
  t structure ptr -> (int32 * int32)
val get_line_wrap:
  t structure ptr -> bool
val get_line_wrap_mode:
  t structure ptr -> Wrap_mode.t
val get_lines:
  t structure ptr -> int32
val get_max_width_chars:
  t structure ptr -> int32
val get_mnemonic_keyval:
  t structure ptr -> Unsigned.uint32
(*Not implemented gtk_label_get_mnemonic_widget return type object not handled*)
val get_selectable:
  t structure ptr -> bool
val get_selection_bounds :
  t structure ptr -> (bool * int32 * int32)
val get_single_line_mode:
  t structure ptr -> bool
val get_text:
  t structure ptr -> string option
val get_track_visited_links:
  t structure ptr -> bool
val get_use_markup:
  t structure ptr -> bool
val get_use_underline:
  t structure ptr -> bool
val get_width_chars:
  t structure ptr -> int32
val get_xalign:
  t structure ptr -> float
val get_yalign:
  t structure ptr -> float
val select_region:
  t structure ptr -> int32 -> int32 -> unit
val set_angle:
  t structure ptr -> float -> unit
val set_attributes:
  t structure ptr -> Attr_list.t structure ptr option -> unit
val set_ellipsize:
  t structure ptr -> Ellipsize_mode.t -> unit
val set_justify:
  t structure ptr -> Justification.t -> unit
val set_label:
  t structure ptr -> string -> unit
val set_line_wrap:
  t structure ptr -> bool -> unit
val set_line_wrap_mode:
  t structure ptr -> Wrap_mode.t -> unit
val set_lines:
  t structure ptr -> int32 -> unit
val set_markup:
  t structure ptr -> string -> unit
val set_markup_with_mnemonic:
  t structure ptr -> string -> unit
val set_max_width_chars:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_label_set_mnemonic_widget type object not implemented*)
val set_pattern:
  t structure ptr -> string -> unit
val set_selectable:
  t structure ptr -> bool -> unit
val set_single_line_mode:
  t structure ptr -> bool -> unit
val set_text:
  t structure ptr -> string -> unit
val set_text_with_mnemonic:
  t structure ptr -> string -> unit
val set_track_visited_links:
  t structure ptr -> bool -> unit
val set_use_markup:
  t structure ptr -> bool -> unit
val set_use_underline:
  t structure ptr -> bool -> unit
val set_width_chars:
  t structure ptr -> int32 -> unit
val set_xalign:
  t structure ptr -> float -> unit
val set_yalign:
  t structure ptr -> float -> unit
