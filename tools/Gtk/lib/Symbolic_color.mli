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
  t structure ptr -> t structure ptr
(*Not implemented gtk_symbolic_color_resolve type object not implemented*)
val to_string:
  t structure ptr -> string option
val unref:
  t structure ptr -> unit
