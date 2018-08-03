open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val create_from_file :
  string -> (t ptr option, Error.t structure ptr option) result
val create_from_gvariant :
  Variant.t structure ptr -> t ptr
val create_from_key_file :
  Key_file.t structure ptr -> string option -> (t ptr option, Error.t structure ptr option) result
val copy :
  t -> t ptr
(*Not implemented gtk_print_settings_foreach type callback not implemented*)
val get :
  t -> string -> string option
val get_bool :
  t -> string -> bool
val get_collate :
  t -> bool
val get_default_source :
  t -> string option
val get_dither :
  t -> string option
val get_double :
  t -> string -> float
val get_double_with_default :
  t -> string -> float -> float
val get_duplex :
  t -> Print_duplex.t
val get_finishings :
  t -> string option
val get_int :
  t -> string -> int32
val get_int_with_default :
  t -> string -> int32 -> int32
val get_length :
  t -> string -> Unit.t -> float
val get_media_type :
  t -> string option
val get_n_copies :
  t -> int32
val get_number_up :
  t -> int32
val get_number_up_layout :
  t -> Number_up_layout.t
val get_orientation :
  t -> Page_orientation.t
val get_output_bin :
  t -> string option
(*Not implemented gtk_print_settings_get_page_ranges return type C Array type for Types.Array tag not handled*)
val get_page_set :
  t -> Page_set.t
val get_paper_height :
  t -> Unit.t -> float
val get_paper_size :
  t -> Paper_size.t structure ptr
val get_paper_width :
  t -> Unit.t -> float
val get_print_pages :
  t -> Print_pages.t
val get_printer :
  t -> string option
val get_printer_lpi :
  t -> float
val get_quality :
  t -> Print_quality.t
val get_resolution :
  t -> int32
val get_resolution_x :
  t -> int32
val get_resolution_y :
  t -> int32
val get_reverse :
  t -> bool
val get_scale :
  t -> float
val get_use_color :
  t -> bool
val has_key :
  t -> string -> bool
val load_file :
  t -> string -> (bool, Error.t structure ptr option) result
val load_key_file :
  t -> Key_file.t structure ptr -> string option -> (bool, Error.t structure ptr option) result
val set :
  t -> string -> string option -> unit
val set_bool :
  t -> string -> bool -> unit
val set_collate :
  t -> bool -> unit
val set_default_source :
  t -> string -> unit
val set_dither :
  t -> string -> unit
val set_double :
  t -> string -> float -> unit
val set_duplex :
  t -> Print_duplex.t -> unit
val set_finishings :
  t -> string -> unit
val set_int :
  t -> string -> int32 -> unit
val set_length :
  t -> string -> float -> Unit.t -> unit
val set_media_type :
  t -> string -> unit
val set_n_copies :
  t -> int32 -> unit
val set_number_up :
  t -> int32 -> unit
val set_number_up_layout :
  t -> Number_up_layout.t -> unit
val set_orientation :
  t -> Page_orientation.t -> unit
val set_output_bin :
  t -> string -> unit
(*Not implemented gtk_print_settings_set_page_ranges type C Array type for Types.Array tag not implemented*)
val set_page_set :
  t -> Page_set.t -> unit
val set_paper_height :
  t -> float -> Unit.t -> unit
val set_paper_size :
  t -> Paper_size.t structure ptr -> unit
val set_paper_width :
  t -> float -> Unit.t -> unit
val set_print_pages :
  t -> Print_pages.t -> unit
val set_printer :
  t -> string -> unit
val set_printer_lpi :
  t -> float -> unit
val set_quality :
  t -> Print_quality.t -> unit
val set_resolution :
  t -> int32 -> unit
val set_resolution_xy :
  t -> int32 -> int32 -> unit
val set_reverse :
  t -> bool -> unit
val set_scale :
  t -> float -> unit
val set_use_color :
  t -> bool -> unit
val to_file :
  t -> string -> (bool, Error.t structure ptr option) result
val to_gvariant :
  t -> Variant.t structure ptr
val to_key_file :
  t -> Key_file.t structure ptr -> string -> unit
val unset :
  t -> string -> unit
