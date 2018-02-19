open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_print_settings_new return type object not handled*)
(*Not implemented gtk_print_settings_new_from_file return type object not handled*)
(*Not implemented gtk_print_settings_new_from_gvariant return type object not handled*)
(*Not implemented gtk_print_settings_new_from_key_file return type object not handled*)
(*Not implemented gtk_print_settings_copy return type object not handled*)
(*Not implemented gtk_print_settings_foreach type callback not implemented*)
val get:
  t structure ptr -> string -> string option
val get_bool:
  t structure ptr -> string -> bool
val get_collate:
  t structure ptr -> bool
val get_default_source:
  t structure ptr -> string option
val get_dither:
  t structure ptr -> string option
val get_double:
  t structure ptr -> string -> float
val get_double_with_default:
  t structure ptr -> string -> float -> float
val get_duplex:
  t structure ptr -> Print_duplex.t
val get_finishings:
  t structure ptr -> string option
val get_int:
  t structure ptr -> string -> int32
val get_int_with_default:
  t structure ptr -> string -> int32 -> int32
val get_length:
  t structure ptr -> string -> Unit.t -> float
val get_media_type:
  t structure ptr -> string option
val get_n_copies:
  t structure ptr -> int32
val get_number_up:
  t structure ptr -> int32
val get_number_up_layout:
  t structure ptr -> Number_up_layout.t
val get_orientation:
  t structure ptr -> Page_orientation.t
val get_output_bin:
  t structure ptr -> string option
(*Not implemented gtk_print_settings_get_page_ranges return type C Array type for Types.Array tag not handled*)
val get_page_set:
  t structure ptr -> Page_set.t
val get_paper_height:
  t structure ptr -> Unit.t -> float
val get_paper_size:
  t structure ptr -> Paper_size.t structure ptr
val get_paper_width:
  t structure ptr -> Unit.t -> float
val get_print_pages:
  t structure ptr -> Print_pages.t
val get_printer:
  t structure ptr -> string option
val get_printer_lpi:
  t structure ptr -> float
val get_quality:
  t structure ptr -> Print_quality.t
val get_resolution:
  t structure ptr -> int32
val get_resolution_x:
  t structure ptr -> int32
val get_resolution_y:
  t structure ptr -> int32
val get_reverse:
  t structure ptr -> bool
val get_scale:
  t structure ptr -> float
val get_use_color:
  t structure ptr -> bool
val has_key:
  t structure ptr -> string -> bool
val load_file:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val load_key_file:
  t structure ptr -> Key_file.t structure ptr -> string option -> (bool, Error.t structure ptr option) result
val set:
  t structure ptr -> string -> string option -> unit
val set_bool:
  t structure ptr -> string -> bool -> unit
val set_collate:
  t structure ptr -> bool -> unit
val set_default_source:
  t structure ptr -> string -> unit
val set_dither:
  t structure ptr -> string -> unit
val set_double:
  t structure ptr -> string -> float -> unit
val set_duplex:
  t structure ptr -> Print_duplex.t -> unit
val set_finishings:
  t structure ptr -> string -> unit
val set_int:
  t structure ptr -> string -> int32 -> unit
val set_length:
  t structure ptr -> string -> float -> Unit.t -> unit
val set_media_type:
  t structure ptr -> string -> unit
val set_n_copies:
  t structure ptr -> int32 -> unit
val set_number_up:
  t structure ptr -> int32 -> unit
val set_number_up_layout:
  t structure ptr -> Number_up_layout.t -> unit
val set_orientation:
  t structure ptr -> Page_orientation.t -> unit
val set_output_bin:
  t structure ptr -> string -> unit
(*Not implemented gtk_print_settings_set_page_ranges type C Array type for Types.Array tag not implemented*)
val set_page_set:
  t structure ptr -> Page_set.t -> unit
val set_paper_height:
  t structure ptr -> float -> Unit.t -> unit
val set_paper_size:
  t structure ptr -> Paper_size.t structure ptr -> unit
val set_paper_width:
  t structure ptr -> float -> Unit.t -> unit
val set_print_pages:
  t structure ptr -> Print_pages.t -> unit
val set_printer:
  t structure ptr -> string -> unit
val set_printer_lpi:
  t structure ptr -> float -> unit
val set_quality:
  t structure ptr -> Print_quality.t -> unit
val set_resolution:
  t structure ptr -> int32 -> unit
val set_resolution_xy:
  t structure ptr -> int32 -> int32 -> unit
val set_reverse:
  t structure ptr -> bool -> unit
val set_scale:
  t structure ptr -> float -> unit
val set_use_color:
  t structure ptr -> bool -> unit
val to_file:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val to_gvariant:
  t structure ptr -> Variant.t structure ptr
val to_key_file:
  t structure ptr -> Key_file.t structure ptr -> string -> unit
val unset:
  t structure ptr -> string -> unit
