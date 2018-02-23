open Ctypes

type t
val t_typ : t structure typ

val create_alpha:
  t structure ptr -> float -> t structure ptr
val create_literal:
  RGBA.t structure ptr -> t structure ptr
val create_mix:
  t structure ptr -> t structure ptr -> float -> t structure ptr
val create_name:
  string -> t structure ptr
val create_shade:
  t structure ptr -> float -> t structure ptr
val create_win32:
  string -> int32 -> t structure ptr
val incr_ref:
  t structure -> t structure ptr
val resolve :
  t structure -> Style_properties.t -> (bool * RGBA.t structure)
val to_string:
  t structure -> string option
val unref:
  t structure -> unit
