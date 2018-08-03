open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Fixed_child"

let f_widget = field t_typ "widget" (ptr Widget.t_typ)
let f_x = field t_typ "x" (int32_t)
let f_y = field t_typ "y" (int32_t)
let _ = seal t_typ

