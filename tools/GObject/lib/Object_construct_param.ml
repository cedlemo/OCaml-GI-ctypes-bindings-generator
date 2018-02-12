open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Object_construct_param"

(*Struct field Object_construct_param : object tag not implemented*)
let f_value = field t_typ "value" (ptr Value.t_typ)
let _ = seal t_typ

