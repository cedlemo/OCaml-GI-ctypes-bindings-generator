open Ctypes

type t
val t_typ : t structure typ

val f_g_type_class: (Type_class.t structure, t structure) field
val f_mask: (Unsigned.uint32, t structure) field
val f_n_values: (Unsigned.uint32, t structure) field
val f_values: (Flags_value.t structure ptr, t structure) field

