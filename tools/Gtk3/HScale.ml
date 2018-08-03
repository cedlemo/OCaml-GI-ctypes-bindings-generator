open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_hscale_new" (ptr_opt Adjustment.t_typ @-> returning (ptr Widget.t_typ))
let create_with_range =
  foreign "gtk_hscale_new_with_range" (double @-> double @-> double @-> returning (ptr Widget.t_typ))
