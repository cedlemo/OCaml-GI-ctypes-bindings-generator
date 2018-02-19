open Ctypes

type t
val t_typ : t structure typ

val f_bg_color: (Color.t structure, t structure) field
val f_fg_color: (Color.t structure, t structure) field
val f_rise: (int32, t structure) field
val f_underline: (Unsigned.uint32, t structure) field
val f_strikethrough: (Unsigned.uint32, t structure) field
val f_draw_bg: (Unsigned.uint32, t structure) field
val f_inside_selection: (Unsigned.uint32, t structure) field
val f_is_text: (Unsigned.uint32, t structure) field

