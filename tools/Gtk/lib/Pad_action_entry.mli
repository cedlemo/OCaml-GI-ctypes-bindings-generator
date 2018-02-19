open Ctypes

type t
val t_typ : t structure typ

val f_type: (Pad_action_type.t, t structure) field
val f_index: (int32, t structure) field
val f_mode: (int32, t structure) field
val f_label: (string, t structure) field
val f_action_name: (string, t structure) field

