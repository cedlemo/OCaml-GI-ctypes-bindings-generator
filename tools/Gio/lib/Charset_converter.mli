open Ctypes

type t
val t_typ : t typ

(*Not implemented g_charset_converter_new return type object not handled*)
val get_num_fallbacks:
  t structure ptr -> Unsigned.uint32
val get_use_fallback:
  t structure ptr -> bool
val set_use_fallback:
  t structure ptr -> bool -> unit
