open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_plugin_class"

let f_base_iface = field t_typ "base_iface" (Type_interface.t_typ)
(*Struct field Type_plugin_class : callback tag not implemented*)
(*Struct field Type_plugin_class : callback tag not implemented*)
(*Struct field Type_plugin_class : callback tag not implemented*)
(*Struct field Type_plugin_class : callback tag not implemented*)
let _ = seal t_typ

