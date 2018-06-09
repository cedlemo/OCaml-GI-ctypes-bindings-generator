open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_property_action_new" (string @-> Object.t_typ @-> string @-> returning (t_typ))
