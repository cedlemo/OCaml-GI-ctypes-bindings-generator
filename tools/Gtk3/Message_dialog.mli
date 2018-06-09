open Ctypes

type t
val t_typ : t typ

val get_image :
  t -> Widget.t
val get_message_area :
  t -> Widget.t
val set_image :
  t -> Widget.t -> unit
val set_markup :
  t -> string -> unit
