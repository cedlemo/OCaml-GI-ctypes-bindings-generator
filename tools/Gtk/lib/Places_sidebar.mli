open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_places_sidebar_new return type object not handled*)
(*Not implemented gtk_places_sidebar_add_shortcut type interface not implemented*)
val get_local_only:
  t structure ptr -> bool
(*Not implemented gtk_places_sidebar_get_location return type interface not handled*)
(*Not implemented gtk_places_sidebar_get_nth_bookmark return type interface not handled*)
val get_open_flags:
  t structure ptr -> Places_open_flags.t_list
val get_show_connect_to_server:
  t structure ptr -> bool
val get_show_desktop:
  t structure ptr -> bool
val get_show_enter_location:
  t structure ptr -> bool
val get_show_other_locations:
  t structure ptr -> bool
val get_show_recent:
  t structure ptr -> bool
val get_show_starred_location:
  t structure ptr -> bool
val get_show_trash:
  t structure ptr -> bool
val list_shortcuts:
  t structure ptr -> SList.t structure ptr
(*Not implemented gtk_places_sidebar_remove_shortcut type interface not implemented*)
(*Not implemented gtk_places_sidebar_set_drop_targets_visible type object not implemented*)
val set_local_only:
  t structure ptr -> bool -> unit
(*Not implemented gtk_places_sidebar_set_location type interface not implemented*)
val set_open_flags:
  t structure ptr -> Places_open_flags.t_list -> unit
val set_show_connect_to_server:
  t structure ptr -> bool -> unit
val set_show_desktop:
  t structure ptr -> bool -> unit
val set_show_enter_location:
  t structure ptr -> bool -> unit
val set_show_other_locations:
  t structure ptr -> bool -> unit
val set_show_recent:
  t structure ptr -> bool -> unit
val set_show_starred_location:
  t structure ptr -> bool -> unit
val set_show_trash:
  t structure ptr -> bool -> unit
