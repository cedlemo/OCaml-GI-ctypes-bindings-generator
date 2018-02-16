open Ctypes

type t
val t_typ : t typ

(*Not implemented g_mount_operation_new return type object not handled*)
val get_anonymous:
  t structure ptr -> bool
val get_choice:
  t structure ptr -> int32
val get_domain:
  t structure ptr -> string option
val get_password:
  t structure ptr -> string option
val get_password_save:
  t structure ptr -> Password_save.t
val get_username:
  t structure ptr -> string option
val reply:
  t structure ptr -> Mount_operation_result.t -> unit
val set_anonymous:
  t structure ptr -> bool -> unit
val set_choice:
  t structure ptr -> int32 -> unit
val set_domain:
  t structure ptr -> string -> unit
val set_password:
  t structure ptr -> string -> unit
val set_password_save:
  t structure ptr -> Password_save.t -> unit
val set_username:
  t structure ptr -> string -> unit
