open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_color_selection_dialog_new" (string @-> returning (ptr Widget.t_typ))
let get_color_selection =
  foreign "gtk_color_selection_dialog_get_color_selection" (t_typ @-> returning (ptr Widget.t_typ))
