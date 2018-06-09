open Ctypes

type t
val t_typ : t structure typ

(*Struct field Type_query : gType tag not implemented*)
val f_type_name: (string, t structure) field
val f_class_size: (Unsigned.uint32, t structure) field
val f_instance_size: (Unsigned.uint32, t structure) field

