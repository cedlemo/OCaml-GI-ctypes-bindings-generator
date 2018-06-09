open Ctypes

type t
val t_typ : t typ

val create :
  string option -> bool -> t
val get_buffer :
  t -> Text_buffer.t
val get_deleted :
  t -> bool
val get_left_gravity :
  t -> bool
val get_name :
  t -> string option
val get_visible :
  t -> bool
val set_visible :
  t -> bool -> unit
