open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_vpaned_new" (void @-> returning (ptr Widget.t_typ))
