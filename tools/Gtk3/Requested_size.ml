open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Requested_size"

let f_data = field t_typ "data" (ptr void)
let f_minimum_size = field t_typ "minimum_size" (int32_t)
let f_natural_size = field t_typ "natural_size" (int32_t)
let _ = seal t_typ

