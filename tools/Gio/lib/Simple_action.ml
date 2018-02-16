open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_simple_action_new return type object not handled*)
(*Not implemented g_simple_action_new_stateful return type object not handled*)
let set_enabled =
  foreign "g_simple_action_set_enabled" (ptr t_typ @-> bool @-> returning (void))
let set_state =
  foreign "g_simple_action_set_state" (ptr t_typ @-> ptr Variant.t_typ @-> returning (void))
let set_state_hint =
  foreign "g_simple_action_set_state_hint" (ptr t_typ @-> ptr_opt Variant.t_typ @-> returning (void))
