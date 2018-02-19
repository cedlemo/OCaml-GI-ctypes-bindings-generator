open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let connect_widget_destroyed =
  foreign "gtk_accessible_connect_widget_destroyed" (ptr t_typ @-> returning (void))
(*Not implemented gtk_accessible_get_widget return type object not handled*)
(*Not implemented gtk_accessible_set_widget type object not implemented*)
