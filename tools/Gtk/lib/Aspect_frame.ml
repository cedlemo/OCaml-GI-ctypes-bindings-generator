open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_aspect_frame_new return type object not handled*)
let set =
  foreign "gtk_aspect_frame_set" (ptr t_typ @-> float @-> float @-> float @-> bool @-> returning (void))
