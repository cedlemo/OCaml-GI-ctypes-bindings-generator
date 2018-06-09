open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Signal_invocation_hint"

let f_signal_id = field t_typ "signal_id" (uint32_t)
let f_detail = field t_typ "detail" (uint32_t)
let f_run_type = field t_typ "run_type" (Signal_flags.t_list_view)
let _ = seal t_typ

