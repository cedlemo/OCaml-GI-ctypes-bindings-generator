open Ctypes

type t
val t_typ : t structure typ

val f_widget: (Widget.t, t structure) field
val f_x: (int32, t structure) field
val f_y: (int32, t structure) field

