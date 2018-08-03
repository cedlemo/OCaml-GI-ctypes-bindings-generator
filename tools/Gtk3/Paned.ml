open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_paned_new" (Orientation.t_view @-> returning (ptr Widget.t_typ))
let add1 =
  foreign "gtk_paned_add1" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let add2 =
  foreign "gtk_paned_add2" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let get_child1 =
  foreign "gtk_paned_get_child1" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_child2 =
  foreign "gtk_paned_get_child2" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_handle_window =
  foreign "gtk_paned_get_handle_window" (t_typ @-> returning (ptr Window.t_typ))
let get_position =
  foreign "gtk_paned_get_position" (t_typ @-> returning (int32_t))
let get_wide_handle =
  foreign "gtk_paned_get_wide_handle" (t_typ @-> returning (bool))
let pack1 =
  foreign "gtk_paned_pack1" (t_typ @-> ptr Widget.t_typ @-> bool @-> bool @-> returning (void))
let pack2 =
  foreign "gtk_paned_pack2" (t_typ @-> ptr Widget.t_typ @-> bool @-> bool @-> returning (void))
let set_position =
  foreign "gtk_paned_set_position" (t_typ @-> int32_t @-> returning (void))
let set_wide_handle =
  foreign "gtk_paned_set_wide_handle" (t_typ @-> bool @-> returning (void))
