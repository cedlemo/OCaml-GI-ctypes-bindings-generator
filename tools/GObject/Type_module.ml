open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_type_module_add_interface type gType not implemented*)
(*Not implemented g_type_module_register_enum return type gType not handled*)
(*Not implemented g_type_module_register_flags return type gType not handled*)
(*Not implemented g_type_module_register_type type gType not implemented*)
let set_name =
  foreign "g_type_module_set_name" (t_typ @-> string @-> returning (void))
let unuse =
  foreign "g_type_module_unuse" (t_typ @-> returning (void))
let use =
  foreign "g_type_module_use" (t_typ @-> returning (bool))
