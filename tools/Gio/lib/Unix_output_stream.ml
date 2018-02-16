open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_unix_output_stream_new return type object not handled*)
let get_close_fd =
  foreign "g_unix_output_stream_get_close_fd" (ptr t_typ @-> returning (bool))
let get_fd =
  foreign "g_unix_output_stream_get_fd" (ptr t_typ @-> returning (int32_t))
let set_close_fd =
  foreign "g_unix_output_stream_set_close_fd" (ptr t_typ @-> bool @-> returning (void))
