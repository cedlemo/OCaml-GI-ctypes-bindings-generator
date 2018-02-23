open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let trigger_tooltip_query =
  foreign "gtk_tooltip_trigger_tooltip_query" (Display.t_typ @-> returning (void))
let set_custom =
  foreign "gtk_tooltip_set_custom" (t_typ @-> Widget.t_typ @-> returning (void))
let set_icon =
  foreign "gtk_tooltip_set_icon" (t_typ @-> Pixbuf.t_typ @-> returning (void))
(*Not implemented gtk_tooltip_set_icon_from_gicon type interface not implemented*)
let set_icon_from_icon_name =
  foreign "gtk_tooltip_set_icon_from_icon_name" (t_typ @-> string_opt @-> int32_t @-> returning (void))
let set_icon_from_stock =
  foreign "gtk_tooltip_set_icon_from_stock" (t_typ @-> string_opt @-> int32_t @-> returning (void))
let set_markup =
  foreign "gtk_tooltip_set_markup" (t_typ @-> string_opt @-> returning (void))
let set_text =
  foreign "gtk_tooltip_set_text" (t_typ @-> string_opt @-> returning (void))
let set_tip_area =
  foreign "gtk_tooltip_set_tip_area" (t_typ @-> ptr Rectangle.t_typ @-> returning (void))
