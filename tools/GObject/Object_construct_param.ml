open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Object_construct_param"

let f_pspec = field t_typ "pspec" (Param_spec.t_typ)
let f_value = field t_typ "value" (ptr Value.t_typ)
let _ = seal t_typ

