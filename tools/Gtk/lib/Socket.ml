open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_socket_new" (void @-> returning (Widget.t_typ))
let add_id =
  foreign "gtk_socket_add_id" (t_typ @-> uint64_t @-> returning (void))
let get_id =
  foreign "gtk_socket_get_id" (t_typ @-> returning (uint64_t))
let get_plug_window =
  foreign "gtk_socket_get_plug_window" (t_typ @-> returning (Window.t_typ))
