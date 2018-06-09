open Ctypes

type t
val t_typ : t structure typ

val f_data: (unit ptr, t structure) field
(*Struct field Closure_notify_data : callback tag not implemented*)

