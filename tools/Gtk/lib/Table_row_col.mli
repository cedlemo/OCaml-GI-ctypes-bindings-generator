open Ctypes

type t
val t_typ : t structure typ

val f_requisition: (Unsigned.uint16, t structure) field
val f_allocation: (Unsigned.uint16, t structure) field
val f_spacing: (Unsigned.uint16, t structure) field
val f_need_expand: (Unsigned.uint32, t structure) field
val f_need_shrink: (Unsigned.uint32, t structure) field
val f_expand: (Unsigned.uint32, t structure) field
val f_shrink: (Unsigned.uint32, t structure) field
val f_empty: (Unsigned.uint32, t structure) field

