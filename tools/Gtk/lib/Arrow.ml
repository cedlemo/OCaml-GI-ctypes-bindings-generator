open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_arrow_new return type object not handled*)
let set =
  foreign "gtk_arrow_set" (ptr t_typ @-> Arrow_type.t_view @-> Shadow_type.t_view @-> returning (void))
