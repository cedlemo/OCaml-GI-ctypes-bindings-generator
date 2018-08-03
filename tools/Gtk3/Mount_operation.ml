open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_mount_operation_new" (ptr_opt Window.t_typ @-> returning (ptr t_typ))
let get_parent =
  foreign "gtk_mount_operation_get_parent" (t_typ @-> returning (ptr Window.t_typ))
let get_screen =
  foreign "gtk_mount_operation_get_screen" (t_typ @-> returning (ptr Screen.t_typ))
let is_showing =
  foreign "gtk_mount_operation_is_showing" (t_typ @-> returning (bool))
let set_parent =
  foreign "gtk_mount_operation_set_parent" (t_typ @-> ptr_opt Window.t_typ @-> returning (void))
let set_screen =
  foreign "gtk_mount_operation_set_screen" (t_typ @-> ptr Screen.t_typ @-> returning (void))
