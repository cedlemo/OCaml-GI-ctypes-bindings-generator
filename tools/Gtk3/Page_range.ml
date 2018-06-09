open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Page_range"

let f_start = field t_typ "start" (int32_t)
let f_end = field t_typ "end" (int32_t)
let _ = seal t_typ

