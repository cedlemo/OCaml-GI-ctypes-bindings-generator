open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_recent_action_new" (string @-> string_opt @-> string_opt @-> string_opt @-> returning (Action.t_typ))
let create_for_manager =
  foreign "gtk_recent_action_new_for_manager" (string @-> string_opt @-> string_opt @-> string_opt @-> Recent_manager.t_typ @-> returning (Action.t_typ))
let get_show_numbers =
  foreign "gtk_recent_action_get_show_numbers" (t_typ @-> returning (bool))
let set_show_numbers =
  foreign "gtk_recent_action_set_show_numbers" (t_typ @-> bool @-> returning (void))
