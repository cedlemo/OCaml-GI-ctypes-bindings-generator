open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_recent_chooser_menu_new" (void @-> returning (ptr Widget.t_typ))
let create_for_manager =
  foreign "gtk_recent_chooser_menu_new_for_manager" (ptr Recent_manager.t_typ @-> returning (ptr Widget.t_typ))
let get_show_numbers =
  foreign "gtk_recent_chooser_menu_get_show_numbers" (t_typ @-> returning (bool))
let set_show_numbers =
  foreign "gtk_recent_chooser_menu_set_show_numbers" (t_typ @-> bool @-> returning (void))
