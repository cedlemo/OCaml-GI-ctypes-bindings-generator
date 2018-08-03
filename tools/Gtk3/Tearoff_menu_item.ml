open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tearoff_menu_item_new" (void @-> returning (ptr Widget.t_typ))
