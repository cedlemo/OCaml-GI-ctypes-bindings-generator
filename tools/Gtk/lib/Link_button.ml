open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_link_button_new" (string @-> returning (Widget.t_typ))
let create_with_label =
  foreign "gtk_link_button_new_with_label" (string @-> string_opt @-> returning (Widget.t_typ))
let get_uri =
  foreign "gtk_link_button_get_uri" (t_typ @-> returning (string_opt))
let get_visited =
  foreign "gtk_link_button_get_visited" (t_typ @-> returning (bool))
let set_uri =
  foreign "gtk_link_button_set_uri" (t_typ @-> string @-> returning (void))
let set_visited =
  foreign "gtk_link_button_set_visited" (t_typ @-> bool @-> returning (void))
