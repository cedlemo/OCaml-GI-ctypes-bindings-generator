open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Flags_value"

let f_value = field t_typ "value" (uint32_t)
let f_value_name = field t_typ "value_name" (string)
let f_value_nick = field t_typ "value_nick" (string)
let _ = seal t_typ

