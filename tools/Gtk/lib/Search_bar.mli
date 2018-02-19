open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_search_bar_new return type object not handled*)
(*Not implemented gtk_search_bar_connect_entry type object not implemented*)
val get_search_mode:
  t structure ptr -> bool
val get_show_close_button:
  t structure ptr -> bool
(*Not implemented gtk_search_bar_handle_event type union not implemented*)
val set_search_mode:
  t structure ptr -> bool -> unit
val set_show_close_button:
  t structure ptr -> bool -> unit
