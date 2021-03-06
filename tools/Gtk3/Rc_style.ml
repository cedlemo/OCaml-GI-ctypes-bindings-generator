open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_rc_style_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_rc_style_copy" (t_typ @-> returning (ptr t_typ))
