open Ctypes

type t
val t_typ : t structure typ

val f_next: (t structure ptr, t structure) field
val f_signal_name: (string, t structure) field
val f_n_args: (Unsigned.uint32, t structure) field
(*Struct field Binding_signal : C Array type for Types.Array tag tag not implemented*)

