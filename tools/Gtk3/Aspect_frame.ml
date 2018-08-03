open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_aspect_frame_new" (string_opt @-> float @-> float @-> float @-> bool @-> returning (ptr Widget.t_typ))
let set =
  foreign "gtk_aspect_frame_set" (t_typ @-> float @-> float @-> float @-> bool @-> returning (void))
