open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_vbox_new" (bool @-> int32_t @-> returning (Widget.t_typ))
