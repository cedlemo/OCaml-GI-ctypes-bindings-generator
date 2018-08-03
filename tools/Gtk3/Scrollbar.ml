open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_scrollbar_new" (Orientation.t_view @-> ptr_opt Adjustment.t_typ @-> returning (ptr Widget.t_typ))
