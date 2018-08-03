open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_arrow_new" (Arrow_type.t_view @-> Shadow_type.t_view @-> returning (ptr Widget.t_typ))
let set =
  foreign "gtk_arrow_set" (t_typ @-> Arrow_type.t_view @-> Shadow_type.t_view @-> returning (void))
