open Ctypes

type t
val t_typ : t structure typ

(*Struct field Fixed_child : object tag not implemented*)
val f_x: (int32, t structure) field
val f_y: (int32, t structure) field

