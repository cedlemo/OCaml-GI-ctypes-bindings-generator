open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_link_button_new return type object not handled*)
(*Not implemented gtk_link_button_new_with_label return type object not handled*)
let get_uri =
  foreign "gtk_link_button_get_uri" (ptr t_typ @-> returning (string_opt))
let get_visited =
  foreign "gtk_link_button_get_visited" (ptr t_typ @-> returning (bool))
let set_uri =
  foreign "gtk_link_button_set_uri" (ptr t_typ @-> string @-> returning (void))
let set_visited =
  foreign "gtk_link_button_set_visited" (ptr t_typ @-> bool @-> returning (void))
