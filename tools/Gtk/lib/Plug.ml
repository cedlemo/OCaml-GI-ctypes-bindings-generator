open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_plug_new return type object not handled*)
(*Not implemented gtk_plug_new_for_display type object not implemented*)
let construct =
  foreign "gtk_plug_construct" (ptr t_typ @-> uint64_t @-> returning (void))
(*Not implemented gtk_plug_construct_for_display type object not implemented*)
let get_embedded =
  foreign "gtk_plug_get_embedded" (ptr t_typ @-> returning (bool))
let get_id =
  foreign "gtk_plug_get_id" (ptr t_typ @-> returning (uint64_t))
(*Not implemented gtk_plug_get_socket_window return type object not handled*)
