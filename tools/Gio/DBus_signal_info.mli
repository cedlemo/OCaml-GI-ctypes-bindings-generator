open Ctypes

type t
val t_typ : t structure typ

val f_ref_count: (int32, t structure) field
val f_name: (string, t structure) field
(*Struct field DBus_signal_info : C Array type for Types.Array tag tag not implemented*)
(*Struct field DBus_signal_info : C Array type for Types.Array tag tag not implemented*)

val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
