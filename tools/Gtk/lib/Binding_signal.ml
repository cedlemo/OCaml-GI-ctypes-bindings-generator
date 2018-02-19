open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Binding_signal"

let f_next = field t_typ "next" (ptr t_typ)
let f_signal_name = field t_typ "signal_name" (string)
let f_n_args = field t_typ "n_args" (uint32_t)
(*Struct field Binding_signal : C Array type for Types.Array tag tag not implemented*)
let _ = seal t_typ

