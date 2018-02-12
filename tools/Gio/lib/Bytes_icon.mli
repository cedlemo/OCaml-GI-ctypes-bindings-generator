open Ctypes

type t
val t_typ : t typ

(*Not implemented g_bytes_icon_new return type object not handled*)
val get_bytes:
  t structure ptr -> Bytes.t structure ptr
