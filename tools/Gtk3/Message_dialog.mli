open Ctypes

type t
val t_typ : t typ

val get_image :
  t -> Widget.t ptr
val get_message_area :
  t -> Widget.t ptr
val set_image :
  t -> Widget.t ptr -> unit
val set_markup :
  t -> string -> unit
