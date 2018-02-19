open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_places_sidebar_new return type object not handled*)
(*Not implemented gtk_places_sidebar_add_shortcut type interface not implemented*)
let get_local_only =
  foreign "gtk_places_sidebar_get_local_only" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_places_sidebar_get_location return type interface not handled*)
(*Not implemented gtk_places_sidebar_get_nth_bookmark return type interface not handled*)
let get_open_flags =
  foreign "gtk_places_sidebar_get_open_flags" (ptr t_typ @-> returning (Places_open_flags.t_list_view))
let get_show_connect_to_server =
  foreign "gtk_places_sidebar_get_show_connect_to_server" (ptr t_typ @-> returning (bool))
let get_show_desktop =
  foreign "gtk_places_sidebar_get_show_desktop" (ptr t_typ @-> returning (bool))
let get_show_enter_location =
  foreign "gtk_places_sidebar_get_show_enter_location" (ptr t_typ @-> returning (bool))
let get_show_other_locations =
  foreign "gtk_places_sidebar_get_show_other_locations" (ptr t_typ @-> returning (bool))
let get_show_recent =
  foreign "gtk_places_sidebar_get_show_recent" (ptr t_typ @-> returning (bool))
let get_show_starred_location =
  foreign "gtk_places_sidebar_get_show_starred_location" (ptr t_typ @-> returning (bool))
let get_show_trash =
  foreign "gtk_places_sidebar_get_show_trash" (ptr t_typ @-> returning (bool))
let list_shortcuts =
  foreign "gtk_places_sidebar_list_shortcuts" (ptr t_typ @-> returning (ptr SList.t_typ))
(*Not implemented gtk_places_sidebar_remove_shortcut type interface not implemented*)
(*Not implemented gtk_places_sidebar_set_drop_targets_visible type object not implemented*)
let set_local_only =
  foreign "gtk_places_sidebar_set_local_only" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_places_sidebar_set_location type interface not implemented*)
let set_open_flags =
  foreign "gtk_places_sidebar_set_open_flags" (ptr t_typ @-> Places_open_flags.t_list_view @-> returning (void))
let set_show_connect_to_server =
  foreign "gtk_places_sidebar_set_show_connect_to_server" (ptr t_typ @-> bool @-> returning (void))
let set_show_desktop =
  foreign "gtk_places_sidebar_set_show_desktop" (ptr t_typ @-> bool @-> returning (void))
let set_show_enter_location =
  foreign "gtk_places_sidebar_set_show_enter_location" (ptr t_typ @-> bool @-> returning (void))
let set_show_other_locations =
  foreign "gtk_places_sidebar_set_show_other_locations" (ptr t_typ @-> bool @-> returning (void))
let set_show_recent =
  foreign "gtk_places_sidebar_set_show_recent" (ptr t_typ @-> bool @-> returning (void))
let set_show_starred_location =
  foreign "gtk_places_sidebar_set_show_starred_location" (ptr t_typ @-> bool @-> returning (void))
let set_show_trash =
  foreign "gtk_places_sidebar_set_show_trash" (ptr t_typ @-> bool @-> returning (void))
