open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Text_appearance"

let f_bg_color = field t_typ "bg_color" (Color.t_typ)
let f_fg_color = field t_typ "fg_color" (Color.t_typ)
let f_rise = field t_typ "rise" (int32_t)
let f_underline = field t_typ "underline" (uint32_t)
let f_strikethrough = field t_typ "strikethrough" (uint32_t)
let f_draw_bg = field t_typ "draw_bg" (uint32_t)
let f_inside_selection = field t_typ "inside_selection" (uint32_t)
let f_is_text = field t_typ "is_text" (uint32_t)
let _ = seal t_typ

