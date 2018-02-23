open Ctypes

type t
val t_typ : t structure typ

val create:
  string option -> t structure ptr
val create_custom:
  string -> string -> float -> float -> Unit.t -> t structure ptr
val create_from_gvariant:
  Variant.t structure ptr -> t structure ptr
val create_from_ipp:
  string -> float -> float -> t structure ptr
val create_from_key_file:
  Key_file.t structure ptr -> string -> (t structure ptr option, Error.t structure ptr option) result
val create_from_ppd:
  string -> string -> float -> float -> t structure ptr
val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
val get_default_bottom_margin:
  t structure -> Unit.t -> float
val get_default_left_margin:
  t structure -> Unit.t -> float
val get_default_right_margin:
  t structure -> Unit.t -> float
val get_default_top_margin:
  t structure -> Unit.t -> float
val get_display_name:
  t structure -> string option
val get_height:
  t structure -> Unit.t -> float
val get_name:
  t structure -> string option
val get_ppd_name:
  t structure -> string option
val get_width:
  t structure -> Unit.t -> float
val is_custom:
  t structure -> bool
val is_equal:
  t structure -> t structure ptr -> bool
val is_ipp:
  t structure -> bool
val set_size:
  t structure -> float -> float -> Unit.t -> unit
val to_gvariant:
  t structure -> Variant.t structure ptr
val to_key_file:
  t structure -> Key_file.t structure ptr -> string -> unit
val get_default:
  unit -> string option
val get_paper_sizes:
  bool -> List.t structure ptr
