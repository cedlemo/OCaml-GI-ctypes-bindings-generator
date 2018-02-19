open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_window_group_new return type object not handled*)
(*Not implemented gtk_window_group_add_window type object not implemented*)
(*Not implemented gtk_window_group_get_current_device_grab type object not implemented*)
(*Not implemented gtk_window_group_get_current_grab return type object not handled*)
let list_windows =
  foreign "gtk_window_group_list_windows" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_window_group_remove_window type object not implemented*)
