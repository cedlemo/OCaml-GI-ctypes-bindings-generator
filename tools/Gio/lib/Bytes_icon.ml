open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_bytes_icon_new return type object not handled*)
let get_bytes =
  foreign "g_bytes_icon_get_bytes" (ptr t_typ @-> returning (ptr Bytes.t_typ))
