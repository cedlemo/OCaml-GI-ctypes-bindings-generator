open Ctypes

type t
val t_typ : t typ

val create :
  Unsigned.uint64 -> Widget.t ptr
val create_for_display :
  Display.t ptr -> Unsigned.uint64 -> Widget.t ptr
val construct :
  t -> Unsigned.uint64 -> unit
val construct_for_display :
  t -> Display.t ptr -> Unsigned.uint64 -> unit
val get_embedded :
  t -> bool
val get_id :
  t -> Unsigned.uint64
val get_socket_window :
  t -> Window.t ptr option
