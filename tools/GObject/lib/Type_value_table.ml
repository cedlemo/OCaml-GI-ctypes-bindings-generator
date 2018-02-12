open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_value_table"

(*Struct field Type_value_table : callback tag not implemented*)
(*Struct field Type_value_table : callback tag not implemented*)
(*Struct field Type_value_table : callback tag not implemented*)
(*Struct field Type_value_table : callback tag not implemented*)
let f_collect_format = field t_typ "collect_format" (string)
(*Struct field Type_value_table : callback tag not implemented*)
let f_lcopy_format = field t_typ "lcopy_format" (string)
(*Struct field Type_value_table : callback tag not implemented*)
let _ = seal t_typ

