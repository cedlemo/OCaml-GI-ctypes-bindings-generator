open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Settings_value"

let f_origin = field t_typ "origin" (string)
let f_value = field t_typ "value" (Value.t_typ)
let _ = seal t_typ

