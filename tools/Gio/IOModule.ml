open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_io_module_new" (string @-> returning (ptr t_typ))
(*Not implemented g_io_module_query return type C Array type for Types.Array tag not handled*)
let load =
  foreign "g_io_module_load" (t_typ @-> returning (void))
let unload =
  foreign "g_io_module_unload" (t_typ @-> returning (void))
