open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_simple_permission_new" (bool @-> returning (Permission.t_typ))
