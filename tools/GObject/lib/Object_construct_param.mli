open Ctypes

type t
val t_typ : t structure typ

(*Struct field Object_construct_param : object tag not implemented*)
val f_value: (Value.t structure ptr, t structure) field

