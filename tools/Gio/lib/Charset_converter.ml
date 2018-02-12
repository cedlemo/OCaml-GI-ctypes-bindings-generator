open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_charset_converter_new return type object not handled*)
let get_num_fallbacks =
  foreign "g_charset_converter_get_num_fallbacks" (ptr t_typ @-> returning (uint32_t))
let get_use_fallback =
  foreign "g_charset_converter_get_use_fallback" (ptr t_typ @-> returning (bool))
let set_use_fallback =
  foreign "g_charset_converter_set_use_fallback" (ptr t_typ @-> bool @-> returning (void))
