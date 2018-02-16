open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_io_module_new return type object not handled*)
(*Not implemented g_io_module_query return type C Array type for Types.Array tag not handled*)
let load =
  foreign "g_io_module_load" (ptr t_typ @-> returning (void))
let unload =
  foreign "g_io_module_unload" (ptr t_typ @-> returning (void))
