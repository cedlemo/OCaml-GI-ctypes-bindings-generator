open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_button_box_new" (Orientation.t_view @-> returning (Widget.t_typ))
let get_child_non_homogeneous =
  foreign "gtk_button_box_get_child_non_homogeneous" (t_typ @-> Widget.t_typ @-> returning (bool))
let get_child_secondary =
  foreign "gtk_button_box_get_child_secondary" (t_typ @-> Widget.t_typ @-> returning (bool))
let get_layout =
  foreign "gtk_button_box_get_layout" (t_typ @-> returning (Button_box_style.t_view))
let set_child_non_homogeneous =
  foreign "gtk_button_box_set_child_non_homogeneous" (t_typ @-> Widget.t_typ @-> bool @-> returning (void))
let set_child_secondary =
  foreign "gtk_button_box_set_child_secondary" (t_typ @-> Widget.t_typ @-> bool @-> returning (void))
let set_layout =
  foreign "gtk_button_box_set_layout" (t_typ @-> Button_box_style.t_view @-> returning (void))
