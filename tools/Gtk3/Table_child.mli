open Ctypes

type t
val t_typ : t structure typ

val f_widget: (Widget.t, t structure) field
val f_left_attach: (Unsigned.uint16, t structure) field
val f_right_attach: (Unsigned.uint16, t structure) field
val f_top_attach: (Unsigned.uint16, t structure) field
val f_bottom_attach: (Unsigned.uint16, t structure) field
val f_xpadding: (Unsigned.uint16, t structure) field
val f_ypadding: (Unsigned.uint16, t structure) field
val f_xexpand: (Unsigned.uint32, t structure) field
val f_yexpand: (Unsigned.uint32, t structure) field
val f_xshrink: (Unsigned.uint32, t structure) field
val f_yshrink: (Unsigned.uint32, t structure) field
val f_xfill: (Unsigned.uint32, t structure) field
val f_yfill: (Unsigned.uint32, t structure) field

