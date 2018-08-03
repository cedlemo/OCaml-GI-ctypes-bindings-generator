open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_child =
  foreign "gtk_bin_get_child" (t_typ @-> returning (ptr_opt Widget.t_typ))
