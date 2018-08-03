open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_list_box_row_new" (void @-> returning (ptr Widget.t_typ))
let changed =
  foreign "gtk_list_box_row_changed" (t_typ @-> returning (void))
let get_activatable =
  foreign "gtk_list_box_row_get_activatable" (t_typ @-> returning (bool))
let get_header =
  foreign "gtk_list_box_row_get_header" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_index =
  foreign "gtk_list_box_row_get_index" (t_typ @-> returning (int32_t))
let get_selectable =
  foreign "gtk_list_box_row_get_selectable" (t_typ @-> returning (bool))
let is_selected =
  foreign "gtk_list_box_row_is_selected" (t_typ @-> returning (bool))
let set_activatable =
  foreign "gtk_list_box_row_set_activatable" (t_typ @-> bool @-> returning (void))
let set_header =
  foreign "gtk_list_box_row_set_header" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_selectable =
  foreign "gtk_list_box_row_set_selectable" (t_typ @-> bool @-> returning (void))
