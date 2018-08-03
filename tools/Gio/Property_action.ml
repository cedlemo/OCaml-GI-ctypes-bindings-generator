open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_property_action_new" (string @-> ptr Object.t_typ @-> string @-> returning (ptr t_typ))
