open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Enum_value"

let f_value = field t_typ "value" (int32_t)
let f_value_name = field t_typ "value_name" (string)
let f_value_nick = field t_typ "value_nick" (string)
let _ = seal t_typ

