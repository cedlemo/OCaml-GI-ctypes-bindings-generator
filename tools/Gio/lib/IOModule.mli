open Ctypes

type t
val t_typ : t typ

(*Not implemented g_io_module_new return type object not handled*)
(*Not implemented g_io_module_query return type C Array type for Types.Array tag not handled*)
val load:
  t structure ptr -> unit
val unload:
  t structure ptr -> unit
