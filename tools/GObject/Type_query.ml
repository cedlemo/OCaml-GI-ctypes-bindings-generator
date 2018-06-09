open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_query"

(*Struct field Type_query : gType tag not implemented*)
let f_type_name = field t_typ "type_name" (string)
let f_class_size = field t_typ "class_size" (uint32_t)
let f_instance_size = field t_typ "instance_size" (uint32_t)
let _ = seal t_typ

