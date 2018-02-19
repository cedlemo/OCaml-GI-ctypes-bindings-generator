open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_spinner_new return type object not handled*)
let start =
  foreign "gtk_spinner_start" (ptr t_typ @-> returning (void))
let stop =
  foreign "gtk_spinner_stop" (ptr t_typ @-> returning (void))
