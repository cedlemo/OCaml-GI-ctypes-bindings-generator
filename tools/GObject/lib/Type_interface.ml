open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_interface"

(*Struct field Type_interface : gType tag not implemented*)
(*Struct field Type_interface : gType tag not implemented*)
let peek_parent =
  foreign "g_type_interface_peek_parent" (ptr t_typ @-> returning (ptr t_typ))
(*Not implemented g_type_interface_add_prerequisite type gType not implemented*)
(*Not implemented g_type_interface_get_plugin type gType not implemented*)
(*Not implemented g_type_interface_peek type gType not implemented*)
(*Not implemented g_type_interface_prerequisites type gType not implemented*)
