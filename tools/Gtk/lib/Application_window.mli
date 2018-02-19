open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_application_window_new type object not implemented*)
(*Not implemented gtk_application_window_get_help_overlay return type object not handled*)
val get_id:
  t structure ptr -> Unsigned.uint32
val get_show_menubar:
  t structure ptr -> bool
(*Not implemented gtk_application_window_set_help_overlay type object not implemented*)
val set_show_menubar:
  t structure ptr -> bool -> unit
