open Ctypes

type t
val t_typ : t typ

val get_blurb:
  t structure ptr -> string option
val get_default_value:
  t structure ptr -> Value.t structure ptr
val get_name:
  t structure ptr -> string option
val get_name_quark:
  t structure ptr -> Unsigned.uint32
val get_nick:
  t structure ptr -> string option
val get_qdata:
  t structure ptr -> Unsigned.uint32 -> unit ptr option
(*Not implemented g_param_spec_get_redirect_target return type object not handled*)
val set_qdata:
  t structure ptr -> Unsigned.uint32 -> unit ptr option -> unit
val sink:
  t structure ptr -> unit
val steal_qdata:
  t structure ptr -> Unsigned.uint32 -> unit ptr option
