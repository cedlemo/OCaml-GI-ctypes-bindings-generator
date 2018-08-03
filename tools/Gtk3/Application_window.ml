open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_application_window_new" (ptr Application.t_typ @-> returning (ptr Widget.t_typ))
let get_help_overlay =
  foreign "gtk_application_window_get_help_overlay" (t_typ @-> returning (ptr_opt Shortcuts_window.t_typ))
let get_id =
  foreign "gtk_application_window_get_id" (t_typ @-> returning (uint32_t))
let get_show_menubar =
  foreign "gtk_application_window_get_show_menubar" (t_typ @-> returning (bool))
let set_help_overlay =
  foreign "gtk_application_window_set_help_overlay" (t_typ @-> ptr_opt Shortcuts_window.t_typ @-> returning (void))
let set_show_menubar =
  foreign "gtk_application_window_set_show_menubar" (t_typ @-> bool @-> returning (void))
