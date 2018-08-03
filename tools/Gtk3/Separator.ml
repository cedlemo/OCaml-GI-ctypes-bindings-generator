open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_separator_new" (Orientation.t_view @-> returning (ptr Widget.t_typ))
