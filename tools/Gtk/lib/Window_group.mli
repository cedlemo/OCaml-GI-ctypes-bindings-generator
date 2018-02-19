open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_window_group_new return type object not handled*)
(*Not implemented gtk_window_group_add_window type object not implemented*)
(*Not implemented gtk_window_group_get_current_device_grab type object not implemented*)
(*Not implemented gtk_window_group_get_current_grab return type object not handled*)
val list_windows:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_window_group_remove_window type object not implemented*)
