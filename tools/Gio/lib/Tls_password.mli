open Ctypes

type t
val t_typ : t typ

val create :
  Tls_password_flags.t_list -> string -> t
val get_description :
  t -> string option
val get_flags :
  t -> Tls_password_flags.t_list
val get_value :
  t -> Unsigned.uint64 ptr option -> Unsigned.uint8 ptr
val get_warning :
  t -> string option
val set_description :
  t -> string -> unit
val set_flags :
  t -> Tls_password_flags.t_list -> unit
val set_value :
  t -> Unsigned.uint8 ptr -> int64 -> unit
(*Not implemented g_tls_password_set_value_full type callback not implemented*)
val set_warning :
  t -> string -> unit
