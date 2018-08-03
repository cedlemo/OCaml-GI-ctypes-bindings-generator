open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_popover_menu_new" (void @-> returning (ptr Widget.t_typ))
let open_submenu =
  foreign "gtk_popover_menu_open_submenu" (t_typ @-> string @-> returning (void))
