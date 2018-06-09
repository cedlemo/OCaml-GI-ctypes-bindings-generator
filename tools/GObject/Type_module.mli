open Ctypes

type t
val t_typ : t typ

(*Not implemented g_type_module_add_interface type gType not implemented*)
(*Not implemented g_type_module_register_enum return type gType not handled*)
(*Not implemented g_type_module_register_flags return type gType not handled*)
(*Not implemented g_type_module_register_type type gType not implemented*)
val set_name :
  t -> string -> unit
val unuse :
  t -> unit
val use :
  t -> bool
