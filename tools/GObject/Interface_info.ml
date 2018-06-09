open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Interface_info"

(*Struct field Interface_info : callback tag not implemented*)
(*Struct field Interface_info : callback tag not implemented*)
let f_interface_data = field t_typ "interface_data" (ptr void)
let _ = seal t_typ

