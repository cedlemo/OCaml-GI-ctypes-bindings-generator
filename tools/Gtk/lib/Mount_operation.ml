open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_mount_operation_new type object not implemented*)
(*Not implemented gtk_mount_operation_get_parent return type object not handled*)
(*Not implemented gtk_mount_operation_get_screen return type object not handled*)
let is_showing =
  foreign "gtk_mount_operation_is_showing" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_mount_operation_set_parent type object not implemented*)
(*Not implemented gtk_mount_operation_set_screen type object not implemented*)
