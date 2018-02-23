open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_revealer_new" (void @-> returning (Widget.t_typ))
let get_child_revealed =
  foreign "gtk_revealer_get_child_revealed" (t_typ @-> returning (bool))
let get_reveal_child =
  foreign "gtk_revealer_get_reveal_child" (t_typ @-> returning (bool))
let get_transition_duration =
  foreign "gtk_revealer_get_transition_duration" (t_typ @-> returning (uint32_t))
let get_transition_type =
  foreign "gtk_revealer_get_transition_type" (t_typ @-> returning (Revealer_transition_type.t_view))
let set_reveal_child =
  foreign "gtk_revealer_set_reveal_child" (t_typ @-> bool @-> returning (void))
let set_transition_duration =
  foreign "gtk_revealer_set_transition_duration" (t_typ @-> uint32_t @-> returning (void))
let set_transition_type =
  foreign "gtk_revealer_set_transition_type" (t_typ @-> Revealer_transition_type.t_view @-> returning (void))
