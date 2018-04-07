open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_simple_action_new" (string @-> ptr_opt Variant_type.t_typ @-> returning (t_typ))
let create_stateful =
  foreign "g_simple_action_new_stateful" (string @-> ptr_opt Variant_type.t_typ @-> ptr Variant.t_typ @-> returning (t_typ))
let set_enabled =
  foreign "g_simple_action_set_enabled" (t_typ @-> bool @-> returning (void))
let set_state =
  foreign "g_simple_action_set_state" (t_typ @-> ptr Variant.t_typ @-> returning (void))
let set_state_hint =
  foreign "g_simple_action_set_state_hint" (t_typ @-> ptr_opt Variant.t_typ @-> returning (void))
