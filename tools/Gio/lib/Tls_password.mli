open Ctypes

type t
val t_typ : t typ

(*Not implemented g_tls_password_new return type object not handled*)
val get_description:
  t structure ptr -> string option
val get_flags:
  t structure ptr -> Tls_password_flags.t_list
val get_value:
  t structure ptr -> Unsigned.uint64 ptr option -> Unsigned.uint8 ptr
val get_warning:
  t structure ptr -> string option
val set_description:
  t structure ptr -> string -> unit
val set_flags:
  t structure ptr -> Tls_password_flags.t_list -> unit
val set_value:
  t structure ptr -> Unsigned.uint8 ptr -> int64 -> unit
(*Not implemented g_tls_password_set_value_full type callback not implemented*)
val set_warning:
  t structure ptr -> string -> unit
