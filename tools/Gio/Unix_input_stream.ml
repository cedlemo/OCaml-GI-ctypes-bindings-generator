open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_input_stream_new" (int32_t @-> bool @-> returning (Input_stream.t_typ))
let get_close_fd =
  foreign "g_unix_input_stream_get_close_fd" (t_typ @-> returning (bool))
let get_fd =
  foreign "g_unix_input_stream_get_fd" (t_typ @-> returning (int32_t))
let set_close_fd =
  foreign "g_unix_input_stream_set_close_fd" (t_typ @-> bool @-> returning (void))
