open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_hscrollbar_new" (Adjustment.t_typ @-> returning (Widget.t_typ))
