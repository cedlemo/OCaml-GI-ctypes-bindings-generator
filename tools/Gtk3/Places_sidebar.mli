open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
(*Not implemented gtk_places_sidebar_add_shortcut type interface not implemented*)
val get_local_only :
  t -> bool
(*Not implemented gtk_places_sidebar_get_location return type interface not handled*)
(*Not implemented gtk_places_sidebar_get_nth_bookmark return type interface not handled*)
val get_open_flags :
  t -> Places_open_flags.t_list
val get_show_connect_to_server :
  t -> bool
val get_show_desktop :
  t -> bool
val get_show_enter_location :
  t -> bool
val get_show_other_locations :
  t -> bool
val get_show_recent :
  t -> bool
val get_show_starred_location :
  t -> bool
val get_show_trash :
  t -> bool
val list_shortcuts :
  t -> SList.t structure (* Not implemented : interface *) ptr
(*Not implemented gtk_places_sidebar_remove_shortcut type interface not implemented*)
val set_drop_targets_visible :
  t -> bool -> Drag_context.t ptr -> unit
val set_local_only :
  t -> bool -> unit
(*Not implemented gtk_places_sidebar_set_location type interface not implemented*)
val set_open_flags :
  t -> Places_open_flags.t_list -> unit
val set_show_connect_to_server :
  t -> bool -> unit
val set_show_desktop :
  t -> bool -> unit
val set_show_enter_location :
  t -> bool -> unit
val set_show_other_locations :
  t -> bool -> unit
val set_show_recent :
  t -> bool -> unit
val set_show_starred_location :
  t -> bool -> unit
val set_show_trash :
  t -> bool -> unit
