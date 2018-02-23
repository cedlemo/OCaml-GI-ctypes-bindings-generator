open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_places_sidebar_new" (void @-> returning (Widget.t_typ))
(*Not implemented gtk_places_sidebar_add_shortcut type interface not implemented*)
let get_local_only =
  foreign "gtk_places_sidebar_get_local_only" (t_typ @-> returning (bool))
(*Not implemented gtk_places_sidebar_get_location return type interface not handled*)
(*Not implemented gtk_places_sidebar_get_nth_bookmark return type interface not handled*)
let get_open_flags =
  foreign "gtk_places_sidebar_get_open_flags" (t_typ @-> returning (Places_open_flags.t_list_view))
let get_show_connect_to_server =
  foreign "gtk_places_sidebar_get_show_connect_to_server" (t_typ @-> returning (bool))
let get_show_desktop =
  foreign "gtk_places_sidebar_get_show_desktop" (t_typ @-> returning (bool))
let get_show_enter_location =
  foreign "gtk_places_sidebar_get_show_enter_location" (t_typ @-> returning (bool))
let get_show_other_locations =
  foreign "gtk_places_sidebar_get_show_other_locations" (t_typ @-> returning (bool))
let get_show_recent =
  foreign "gtk_places_sidebar_get_show_recent" (t_typ @-> returning (bool))
let get_show_starred_location =
  foreign "gtk_places_sidebar_get_show_starred_location" (t_typ @-> returning (bool))
let get_show_trash =
  foreign "gtk_places_sidebar_get_show_trash" (t_typ @-> returning (bool))
let list_shortcuts =
  foreign "gtk_places_sidebar_list_shortcuts" (t_typ @-> returning (ptr SList.t_typ))
(*Not implemented gtk_places_sidebar_remove_shortcut type interface not implemented*)
let set_drop_targets_visible =
  foreign "gtk_places_sidebar_set_drop_targets_visible" (t_typ @-> bool @-> Drag_context.t_typ @-> returning (void))
let set_local_only =
  foreign "gtk_places_sidebar_set_local_only" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_places_sidebar_set_location type interface not implemented*)
let set_open_flags =
  foreign "gtk_places_sidebar_set_open_flags" (t_typ @-> Places_open_flags.t_list_view @-> returning (void))
let set_show_connect_to_server =
  foreign "gtk_places_sidebar_set_show_connect_to_server" (t_typ @-> bool @-> returning (void))
let set_show_desktop =
  foreign "gtk_places_sidebar_set_show_desktop" (t_typ @-> bool @-> returning (void))
let set_show_enter_location =
  foreign "gtk_places_sidebar_set_show_enter_location" (t_typ @-> bool @-> returning (void))
let set_show_other_locations =
  foreign "gtk_places_sidebar_set_show_other_locations" (t_typ @-> bool @-> returning (void))
let set_show_recent =
  foreign "gtk_places_sidebar_set_show_recent" (t_typ @-> bool @-> returning (void))
let set_show_starred_location =
  foreign "gtk_places_sidebar_set_show_starred_location" (t_typ @-> bool @-> returning (void))
let set_show_trash =
  foreign "gtk_places_sidebar_set_show_trash" (t_typ @-> bool @-> returning (void))
