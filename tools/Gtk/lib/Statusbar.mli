open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val get_context_id:
  t -> string -> Unsigned.uint32
val get_message_area:
  t -> Box.t
val pop:
  t -> Unsigned.uint32 -> unit
val push:
  t -> Unsigned.uint32 -> string -> Unsigned.uint32
val remove:
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val remove_all:
  t -> Unsigned.uint32 -> unit
