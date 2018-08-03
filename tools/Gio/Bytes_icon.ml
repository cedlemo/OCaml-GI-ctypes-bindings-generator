open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_bytes_icon_new" (ptr Bytes.t_typ @-> returning (ptr t_typ))
let get_bytes =
  foreign "g_bytes_icon_get_bytes" (t_typ @-> returning (ptr Bytes.t_typ))
