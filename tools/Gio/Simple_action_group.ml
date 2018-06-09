open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_simple_action_group_new" (void @-> returning (t_typ))
(*Not implemented g_simple_action_group_add_entries type C Array type for Types.Array tag not implemented*)
(*Not implemented g_simple_action_group_insert type interface not implemented*)
(*Not implemented g_simple_action_group_lookup return type interface not handled*)
let remove =
  foreign "g_simple_action_group_remove" (t_typ @-> string @-> returning (void))
