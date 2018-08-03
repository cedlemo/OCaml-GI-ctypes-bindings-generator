open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
(*Not implemented g_simple_action_group_add_entries type C Array type for Types.Array tag not implemented*)
(*Not implemented g_simple_action_group_insert type interface not implemented*)
(*Not implemented g_simple_action_group_lookup return type interface not handled*)
val remove :
  t -> string -> unit
