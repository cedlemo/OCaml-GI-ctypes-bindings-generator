open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let connect_widget_destroyed =
  foreign "gtk_accessible_connect_widget_destroyed" (t_typ @-> returning (void))
let get_widget =
  foreign "gtk_accessible_get_widget" (t_typ @-> returning (Widget.t_typ))
let set_widget =
  foreign "gtk_accessible_set_widget" (t_typ @-> Widget.t_typ @-> returning (void))
