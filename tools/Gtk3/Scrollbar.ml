open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_scrollbar_new" (Orientation.t_view @-> Adjustment.t_typ @-> returning (Widget.t_typ))
