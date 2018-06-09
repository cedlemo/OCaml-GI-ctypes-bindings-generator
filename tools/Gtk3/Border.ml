open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Border"

let f_left = field t_typ "left" (int16_t)
let f_right = field t_typ "right" (int16_t)
let f_top = field t_typ "top" (int16_t)
let f_bottom = field t_typ "bottom" (int16_t)
let _ = seal t_typ

let create =
  foreign "gtk_border_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_border_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_border_free" (ptr t_typ @-> returning (void))
