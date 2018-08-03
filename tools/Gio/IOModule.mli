open Ctypes

type t
val t_typ : t typ

val create :
  string -> t ptr
(*Not implemented g_io_module_query return type C Array type for Types.Array tag not handled*)
val load :
  t -> unit
val unload :
  t -> unit
