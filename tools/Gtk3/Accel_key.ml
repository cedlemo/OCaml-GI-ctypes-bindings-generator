open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Accel_key"

let f_accel_key = field t_typ "accel_key" (uint32_t)
let f_accel_mods = field t_typ "accel_mods" (Modifier_type.t_list_view)
let f_accel_flags = field t_typ "accel_flags" (uint32_t)
let _ = seal t_typ

