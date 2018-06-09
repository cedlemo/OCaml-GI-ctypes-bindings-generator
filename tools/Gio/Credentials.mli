open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val get_unix_pid :
  t -> (int32, Error.t structure ptr option) result
val get_unix_user :
  t -> (Unsigned.uint32, Error.t structure ptr option) result
val is_same_user :
  t -> t -> (bool, Error.t structure ptr option) result
val set_native :
  t -> Credentials_type.t -> unit ptr -> unit
val set_unix_user :
  t -> Unsigned.uint32 -> (bool, Error.t structure ptr option) result
val to_string :
  t -> string option
