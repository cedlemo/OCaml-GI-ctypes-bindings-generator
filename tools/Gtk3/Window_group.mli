open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val add_window :
  t -> Window.t ptr -> unit
val get_current_device_grab :
  t -> Device.t ptr -> Widget.t ptr option
val get_current_grab :
  t -> Widget.t ptr
val list_windows :
  t -> List.t structure (* Not implemented : interface *) ptr
val remove_window :
  t -> Window.t ptr -> unit
