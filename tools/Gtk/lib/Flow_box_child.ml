open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_flow_box_child_new return type object not handled*)
let changed =
  foreign "gtk_flow_box_child_changed" (ptr t_typ @-> returning (void))
let get_index =
  foreign "gtk_flow_box_child_get_index" (ptr t_typ @-> returning (int32_t))
let is_selected =
  foreign "gtk_flow_box_child_is_selected" (ptr t_typ @-> returning (bool))
