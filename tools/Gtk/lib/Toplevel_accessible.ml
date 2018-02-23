open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_children =
  foreign "gtk_toplevel_accessible_get_children" (t_typ @-> returning (ptr List.t_typ))
