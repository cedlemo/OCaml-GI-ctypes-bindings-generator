open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val add_window :
  t -> Window.t -> unit
val get_current_device_grab :
  t -> Device.t -> Widget.t
val get_current_grab :
  t -> Widget.t
val list_windows :
  t -> List.t structure (* Window.t *) ptr
val remove_window :
  t -> Window.t -> unit
