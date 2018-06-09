open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_invisible_new" (void @-> returning (Widget.t_typ))
let create_for_screen =
  foreign "gtk_invisible_new_for_screen" (Screen.t_typ @-> returning (Widget.t_typ))
let get_screen =
  foreign "gtk_invisible_get_screen" (t_typ @-> returning (Screen.t_typ))
let set_screen =
  foreign "gtk_invisible_set_screen" (t_typ @-> Screen.t_typ @-> returning (void))
