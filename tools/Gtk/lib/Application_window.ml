open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_application_window_new type object not implemented*)
(*Not implemented gtk_application_window_get_help_overlay return type object not handled*)
let get_id =
  foreign "gtk_application_window_get_id" (ptr t_typ @-> returning (uint32_t))
let get_show_menubar =
  foreign "gtk_application_window_get_show_menubar" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_application_window_set_help_overlay type object not implemented*)
let set_show_menubar =
  foreign "gtk_application_window_set_show_menubar" (ptr t_typ @-> bool @-> returning (void))
