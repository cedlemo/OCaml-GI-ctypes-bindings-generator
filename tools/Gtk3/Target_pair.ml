open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Target_pair"

let f_target = field t_typ "target" (ptr Atom.t_typ)
let f_flags = field t_typ "flags" (uint32_t)
let f_info = field t_typ "info" (uint32_t)
let _ = seal t_typ

