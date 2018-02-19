open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tooltip_trigger_tooltip_query type object not implemented*)
(*Not implemented gtk_tooltip_set_custom type object not implemented*)
(*Not implemented gtk_tooltip_set_icon type object not implemented*)
(*Not implemented gtk_tooltip_set_icon_from_gicon type interface not implemented*)
let set_icon_from_icon_name =
  foreign "gtk_tooltip_set_icon_from_icon_name" (ptr t_typ @-> string_opt @-> int32_t @-> returning (void))
let set_icon_from_stock =
  foreign "gtk_tooltip_set_icon_from_stock" (ptr t_typ @-> string_opt @-> int32_t @-> returning (void))
let set_markup =
  foreign "gtk_tooltip_set_markup" (ptr t_typ @-> string_opt @-> returning (void))
let set_text =
  foreign "gtk_tooltip_set_text" (ptr t_typ @-> string_opt @-> returning (void))
let set_tip_area =
  foreign "gtk_tooltip_set_tip_area" (ptr t_typ @-> ptr Rectangle.t_typ @-> returning (void))
