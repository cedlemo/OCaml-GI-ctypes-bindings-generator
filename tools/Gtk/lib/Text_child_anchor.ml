open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_child_anchor_new" (void @-> returning (t_typ))
let get_deleted =
  foreign "gtk_text_child_anchor_get_deleted" (t_typ @-> returning (bool))
let get_widgets =
  foreign "gtk_text_child_anchor_get_widgets" (t_typ @-> returning (ptr List.t_typ))
