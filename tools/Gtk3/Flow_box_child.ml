open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_flow_box_child_new" (void @-> returning (ptr Widget.t_typ))
let changed =
  foreign "gtk_flow_box_child_changed" (t_typ @-> returning (void))
let get_index =
  foreign "gtk_flow_box_child_get_index" (t_typ @-> returning (int32_t))
let is_selected =
  foreign "gtk_flow_box_child_is_selected" (t_typ @-> returning (bool))
