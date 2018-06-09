open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_instance"

let f_g_class = field t_typ "g_class" (ptr Type_class.t_typ)
let _ = seal t_typ

(*Not implemented g_type_instance_get_private type gType not implemented*)
