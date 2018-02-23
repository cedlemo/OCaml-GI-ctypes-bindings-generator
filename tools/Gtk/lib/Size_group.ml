open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_size_group_new" (Size_group_mode.t_view @-> returning (t_typ))
let add_widget =
  foreign "gtk_size_group_add_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let get_ignore_hidden =
  foreign "gtk_size_group_get_ignore_hidden" (t_typ @-> returning (bool))
let get_mode =
  foreign "gtk_size_group_get_mode" (t_typ @-> returning (Size_group_mode.t_view))
let get_widgets =
  foreign "gtk_size_group_get_widgets" (t_typ @-> returning (ptr SList.t_typ))
let remove_widget =
  foreign "gtk_size_group_remove_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_ignore_hidden =
  foreign "gtk_size_group_set_ignore_hidden" (t_typ @-> bool @-> returning (void))
let set_mode =
  foreign "gtk_size_group_set_mode" (t_typ @-> Size_group_mode.t_view @-> returning (void))
