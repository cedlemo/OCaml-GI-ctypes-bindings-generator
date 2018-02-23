open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_window_group_new" (void @-> returning (t_typ))
let add_window =
  foreign "gtk_window_group_add_window" (t_typ @-> Window.t_typ @-> returning (void))
let get_current_device_grab =
  foreign "gtk_window_group_get_current_device_grab" (t_typ @-> Device.t_typ @-> returning (Widget.t_typ))
let get_current_grab =
  foreign "gtk_window_group_get_current_grab" (t_typ @-> returning (Widget.t_typ))
let list_windows =
  foreign "gtk_window_group_list_windows" (t_typ @-> returning (ptr List.t_typ))
let remove_window =
  foreign "gtk_window_group_remove_window" (t_typ @-> Window.t_typ @-> returning (void))
