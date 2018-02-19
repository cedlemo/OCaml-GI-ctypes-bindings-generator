open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_popover_menu_new return type object not handled*)
let open_submenu =
  foreign "gtk_popover_menu_open_submenu" (ptr t_typ @-> string @-> returning (void))
