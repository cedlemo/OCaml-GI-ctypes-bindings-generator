open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Signal_query"

let f_signal_id = field t_typ "signal_id" (uint32_t)
let f_signal_name = field t_typ "signal_name" (string)
(*Struct field Signal_query : gType tag not implemented*)
let f_signal_flags = field t_typ "signal_flags" (Signal_flags.t_list_view)
(*Struct field Signal_query : gType tag not implemented*)
let f_n_params = field t_typ "n_params" (uint32_t)
(*Struct field Signal_query : C Array type for Types.Array tag tag not implemented*)
let _ = seal t_typ

