open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Accel_group_entry"

let f_key = field t_typ "key" (Accel_key.t_typ)
let f_closure = field t_typ "closure" (ptr Closure.t_typ)
let f_accel_path_quark = field t_typ "accel_path_quark" (uint32_t)
let _ = seal t_typ

