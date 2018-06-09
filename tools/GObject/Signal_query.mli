open Ctypes

type t
val t_typ : t structure typ

val f_signal_id: (Unsigned.uint32, t structure) field
val f_signal_name: (string, t structure) field
(*Struct field Signal_query : gType tag not implemented*)
val f_signal_flags: (Signal_flags.t_list, t structure) field
(*Struct field Signal_query : gType tag not implemented*)
val f_n_params: (Unsigned.uint32, t structure) field
(*Struct field Signal_query : C Array type for Types.Array tag tag not implemented*)

