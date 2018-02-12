open Ctypes

type t
val t_typ : t typ

val get_flags:
  t structure ptr -> Binding_flags.t_list
(*Not implemented g_binding_get_source return type object not handled*)
val get_source_property:
  t structure ptr -> string option
(*Not implemented g_binding_get_target return type object not handled*)
val get_target_property:
  t structure ptr -> string option
val unbind:
  t structure ptr -> unit
