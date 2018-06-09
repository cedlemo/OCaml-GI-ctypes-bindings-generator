open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_search_bar_new" (void @-> returning (Widget.t_typ))
let connect_entry =
  foreign "gtk_search_bar_connect_entry" (t_typ @-> Entry.t_typ @-> returning (void))
let get_search_mode =
  foreign "gtk_search_bar_get_search_mode" (t_typ @-> returning (bool))
let get_show_close_button =
  foreign "gtk_search_bar_get_show_close_button" (t_typ @-> returning (bool))
(*Not implemented gtk_search_bar_handle_event type union not implemented*)
let set_search_mode =
  foreign "gtk_search_bar_set_search_mode" (t_typ @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_search_bar_set_show_close_button" (t_typ @-> bool @-> returning (void))
