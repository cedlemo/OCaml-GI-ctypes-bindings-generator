open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
val connect_entry :
  t -> Entry.t -> unit
val get_search_mode :
  t -> bool
val get_show_close_button :
  t -> bool
(*Not implemented gtk_search_bar_handle_event type union not implemented*)
val set_search_mode :
  t -> bool -> unit
val set_show_close_button :
  t -> bool -> unit
