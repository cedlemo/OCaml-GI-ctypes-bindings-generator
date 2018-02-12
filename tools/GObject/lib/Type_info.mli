open Ctypes

type t
val t_typ : t structure typ

val f_class_size: (Unsigned.uint16, t structure) field
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
(*Struct field Type_info : callback tag not implemented*)
val f_class_data: (unit ptr, t structure) field
val f_instance_size: (Unsigned.uint16, t structure) field
val f_n_preallocs: (Unsigned.uint16, t structure) field
(*Struct field Type_info : callback tag not implemented*)
val f_value_table: (Type_value_table.t structure ptr, t structure) field

