open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_overlay_new" (void @-> returning (ptr Widget.t_typ))
let add_overlay =
  foreign "gtk_overlay_add_overlay" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let get_overlay_pass_through =
  foreign "gtk_overlay_get_overlay_pass_through" (t_typ @-> ptr Widget.t_typ @-> returning (bool))
let reorder_overlay =
  foreign "gtk_overlay_reorder_overlay" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> returning (void))
let set_overlay_pass_through =
  foreign "gtk_overlay_set_overlay_pass_through" (t_typ @-> ptr Widget.t_typ @-> bool @-> returning (void))
