open Ctypes

type t
val t_typ : t structure typ

val f_signal_id: (Unsigned.uint32, t structure) field
val f_detail: (Unsigned.uint32, t structure) field
val f_run_type: (Signal_flags.t_list, t structure) field

