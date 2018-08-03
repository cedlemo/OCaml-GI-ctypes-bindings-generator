open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get_anonymous :
  t -> bool
val get_choice :
  t -> int32
val get_domain :
  t -> string option
val get_password :
  t -> string option
val get_password_save :
  t -> Password_save.t
val get_username :
  t -> string option
val reply :
  t -> Mount_operation_result.t -> unit
val set_anonymous :
  t -> bool -> unit
val set_choice :
  t -> int32 -> unit
val set_domain :
  t -> string -> unit
val set_password :
  t -> string -> unit
val set_password_save :
  t -> Password_save.t -> unit
val set_username :
  t -> string -> unit
