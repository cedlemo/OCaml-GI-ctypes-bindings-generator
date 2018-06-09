open Ctypes

type t
val t_typ : t structure typ

val f_target: (Atom.t structure ptr, t structure) field
val f_flags: (Unsigned.uint32, t structure) field
val f_info: (Unsigned.uint32, t structure) field

