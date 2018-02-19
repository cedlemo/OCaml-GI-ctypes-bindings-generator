open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_revealer_new return type object not handled*)
let get_child_revealed =
  foreign "gtk_revealer_get_child_revealed" (ptr t_typ @-> returning (bool))
let get_reveal_child =
  foreign "gtk_revealer_get_reveal_child" (ptr t_typ @-> returning (bool))
let get_transition_duration =
  foreign "gtk_revealer_get_transition_duration" (ptr t_typ @-> returning (uint32_t))
let get_transition_type =
  foreign "gtk_revealer_get_transition_type" (ptr t_typ @-> returning (Revealer_transition_type.t_view))
let set_reveal_child =
  foreign "gtk_revealer_set_reveal_child" (ptr t_typ @-> bool @-> returning (void))
let set_transition_duration =
  foreign "gtk_revealer_set_transition_duration" (ptr t_typ @-> uint32_t @-> returning (void))
let set_transition_type =
  foreign "gtk_revealer_set_transition_type" (ptr t_typ @-> Revealer_transition_type.t_view @-> returning (void))
