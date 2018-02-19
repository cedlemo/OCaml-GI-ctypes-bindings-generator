open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_socket_new return type object not handled*)
let add_id =
  foreign "gtk_socket_add_id" (ptr t_typ @-> uint64_t @-> returning (void))
let get_id =
  foreign "gtk_socket_get_id" (ptr t_typ @-> returning (uint64_t))
(*Not implemented gtk_socket_get_plug_window return type object not handled*)
