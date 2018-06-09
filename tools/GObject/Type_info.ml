open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_info"

let f_class_size = field t_typ "class_size" (uint16_t)
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
let f_class_data = field t_typ "class_data" (ptr void)
let f_instance_size = field t_typ "instance_size" (uint16_t)
let f_n_preallocs = field t_typ "n_preallocs" (uint16_t)
(*Struct field Type_info : callback tag not implemented*)
let f_value_table = field t_typ "value_table" (ptr Type_value_table.t_typ)
let _ = seal t_typ

