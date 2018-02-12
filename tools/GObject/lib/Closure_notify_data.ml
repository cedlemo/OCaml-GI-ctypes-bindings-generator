open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Closure_notify_data"

let f_data = field t_typ "data" (ptr void)
(*Struct field Closure_notify_data : callback tag not implemented*)
let _ = seal t_typ

