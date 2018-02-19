open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_child_anchor_new return type object not handled*)
let get_deleted =
  foreign "gtk_text_child_anchor_get_deleted" (ptr t_typ @-> returning (bool))
let get_widgets =
  foreign "gtk_text_child_anchor_get_widgets" (ptr t_typ @-> returning (ptr List.t_typ))
