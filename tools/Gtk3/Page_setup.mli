open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val create_from_file :
  string -> (t, Error.t structure ptr option) result
val create_from_gvariant :
  Variant.t structure ptr -> t
val create_from_key_file :
  Key_file.t structure ptr -> string option -> (t, Error.t structure ptr option) result
val copy :
  t -> t
val get_bottom_margin :
  t -> Unit.t -> float
val get_left_margin :
  t -> Unit.t -> float
val get_orientation :
  t -> Page_orientation.t
val get_page_height :
  t -> Unit.t -> float
val get_page_width :
  t -> Unit.t -> float
val get_paper_height :
  t -> Unit.t -> float
val get_paper_size :
  t -> Paper_size.t structure ptr
val get_paper_width :
  t -> Unit.t -> float
val get_right_margin :
  t -> Unit.t -> float
val get_top_margin :
  t -> Unit.t -> float
val load_file :
  t -> string -> (bool, Error.t structure ptr option) result
val load_key_file :
  t -> Key_file.t structure ptr -> string option -> (bool, Error.t structure ptr option) result
val set_bottom_margin :
  t -> float -> Unit.t -> unit
val set_left_margin :
  t -> float -> Unit.t -> unit
val set_orientation :
  t -> Page_orientation.t -> unit
val set_paper_size :
  t -> Paper_size.t structure ptr -> unit
val set_paper_size_and_default_margins :
  t -> Paper_size.t structure ptr -> unit
val set_right_margin :
  t -> float -> Unit.t -> unit
val set_top_margin :
  t -> float -> Unit.t -> unit
val to_file :
  t -> string -> (bool, Error.t structure ptr option) result
val to_gvariant :
  t -> Variant.t structure ptr
val to_key_file :
  t -> Key_file.t structure ptr -> string -> unit
