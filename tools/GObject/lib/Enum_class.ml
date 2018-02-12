open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Enum_class"

let f_g_type_class = field t_typ "g_type_class" (Type_class.t_typ)
let f_minimum = field t_typ "minimum" (int32_t)
let f_maximum = field t_typ "maximum" (int32_t)
let f_n_values = field t_typ "n_values" (uint32_t)
let f_values = field t_typ "values" (ptr Enum_value.t_typ)
let _ = seal t_typ

