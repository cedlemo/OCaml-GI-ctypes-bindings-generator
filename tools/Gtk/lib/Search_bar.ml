open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_search_bar_new return type object not handled*)
(*Not implemented gtk_search_bar_connect_entry type object not implemented*)
let get_search_mode =
  foreign "gtk_search_bar_get_search_mode" (ptr t_typ @-> returning (bool))
let get_show_close_button =
  foreign "gtk_search_bar_get_show_close_button" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_search_bar_handle_event type union not implemented*)
let set_search_mode =
  foreign "gtk_search_bar_set_search_mode" (ptr t_typ @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_search_bar_set_show_close_button" (ptr t_typ @-> bool @-> returning (void))
