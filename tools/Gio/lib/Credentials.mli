open Ctypes

type t
val t_typ : t typ

(*Not implemented g_credentials_new return type object not handled*)
val get_unix_pid:
  t structure ptr -> (int32, Error.t structure ptr option) result
val get_unix_user:
  t structure ptr -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented g_credentials_is_same_user type object not implemented*)
val set_native:
  t structure ptr -> Credentials_type.t -> unit ptr -> unit
val set_unix_user:
  t structure ptr -> Unsigned.uint32 -> (bool, Error.t structure ptr option) result
val to_string:
  t structure ptr -> string option
