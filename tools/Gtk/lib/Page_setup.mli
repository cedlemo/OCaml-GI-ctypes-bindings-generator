open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_page_setup_new return type object not handled*)
(*Not implemented gtk_page_setup_new_from_file return type object not handled*)
(*Not implemented gtk_page_setup_new_from_gvariant return type object not handled*)
(*Not implemented gtk_page_setup_new_from_key_file return type object not handled*)
(*Not implemented gtk_page_setup_copy return type object not handled*)
val get_bottom_margin:
  t structure ptr -> Unit.t -> float
val get_left_margin:
  t structure ptr -> Unit.t -> float
val get_orientation:
  t structure ptr -> Page_orientation.t
val get_page_height:
  t structure ptr -> Unit.t -> float
val get_page_width:
  t structure ptr -> Unit.t -> float
val get_paper_height:
  t structure ptr -> Unit.t -> float
val get_paper_size:
  t structure ptr -> Paper_size.t structure ptr
val get_paper_width:
  t structure ptr -> Unit.t -> float
val get_right_margin:
  t structure ptr -> Unit.t -> float
val get_top_margin:
  t structure ptr -> Unit.t -> float
val load_file:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val load_key_file:
  t structure ptr -> Key_file.t structure ptr -> string option -> (bool, Error.t structure ptr option) result
val set_bottom_margin:
  t structure ptr -> float -> Unit.t -> unit
val set_left_margin:
  t structure ptr -> float -> Unit.t -> unit
val set_orientation:
  t structure ptr -> Page_orientation.t -> unit
val set_paper_size:
  t structure ptr -> Paper_size.t structure ptr -> unit
val set_paper_size_and_default_margins:
  t structure ptr -> Paper_size.t structure ptr -> unit
val set_right_margin:
  t structure ptr -> float -> Unit.t -> unit
val set_top_margin:
  t structure ptr -> float -> Unit.t -> unit
val to_file:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val to_gvariant:
  t structure ptr -> Variant.t structure ptr
val to_key_file:
  t structure ptr -> Key_file.t structure ptr -> string -> unit
