open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Table_child"

let f_widget = field t_typ "widget" (Widget.t_typ)
let f_left_attach = field t_typ "left_attach" (uint16_t)
let f_right_attach = field t_typ "right_attach" (uint16_t)
let f_top_attach = field t_typ "top_attach" (uint16_t)
let f_bottom_attach = field t_typ "bottom_attach" (uint16_t)
let f_xpadding = field t_typ "xpadding" (uint16_t)
let f_ypadding = field t_typ "ypadding" (uint16_t)
let f_xexpand = field t_typ "xexpand" (uint32_t)
let f_yexpand = field t_typ "yexpand" (uint32_t)
let f_xshrink = field t_typ "xshrink" (uint32_t)
let f_yshrink = field t_typ "yshrink" (uint32_t)
let f_xfill = field t_typ "xfill" (uint32_t)
let f_yfill = field t_typ "yfill" (uint32_t)
let _ = seal t_typ

