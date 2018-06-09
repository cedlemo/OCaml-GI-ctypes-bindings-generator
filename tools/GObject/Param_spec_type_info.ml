open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Param_spec_type_info"

let f_instance_size = field t_typ "instance_size" (uint16_t)
let f_n_preallocs = field t_typ "n_preallocs" (uint16_t)
(*Struct field Param_spec_type_info : callback tag not implemented*)
(*Struct field Param_spec_type_info : gType tag not implemented*)
(*Struct field Param_spec_type_info : callback tag not implemented*)
(*Struct field Param_spec_type_info : callback tag not implemented*)
(*Struct field Param_spec_type_info : callback tag not implemented*)
(*Struct field Param_spec_type_info : callback tag not implemented*)
let _ = seal t_typ

