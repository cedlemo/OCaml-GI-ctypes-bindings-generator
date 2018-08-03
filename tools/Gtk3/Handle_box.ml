open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_handle_box_new" (void @-> returning (ptr Widget.t_typ))
let get_child_detached =
  foreign "gtk_handle_box_get_child_detached" (t_typ @-> returning (bool))
let get_handle_position =
  foreign "gtk_handle_box_get_handle_position" (t_typ @-> returning (Position_type.t_view))
let get_shadow_type =
  foreign "gtk_handle_box_get_shadow_type" (t_typ @-> returning (Shadow_type.t_view))
let get_snap_edge =
  foreign "gtk_handle_box_get_snap_edge" (t_typ @-> returning (Position_type.t_view))
let set_handle_position =
  foreign "gtk_handle_box_set_handle_position" (t_typ @-> Position_type.t_view @-> returning (void))
let set_shadow_type =
  foreign "gtk_handle_box_set_shadow_type" (t_typ @-> Shadow_type.t_view @-> returning (void))
let set_snap_edge =
  foreign "gtk_handle_box_set_snap_edge" (t_typ @-> Position_type.t_view @-> returning (void))
