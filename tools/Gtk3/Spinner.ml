open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_spinner_new" (void @-> returning (ptr Widget.t_typ))
let start =
  foreign "gtk_spinner_start" (t_typ @-> returning (void))
let stop =
  foreign "gtk_spinner_stop" (t_typ @-> returning (void))
