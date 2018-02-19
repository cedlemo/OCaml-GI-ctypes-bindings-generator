open Ctypes

type t
val t_typ : t structure typ

val f_type_name: (Unsigned.uint32, t structure) field
val f_property_name: (Unsigned.uint32, t structure) field
val f_origin: (string, t structure) field
val f_value: (Value.t structure, t structure) field

(*Not implemented gtk_rc_property_parse_border type object not implemented*)
(*Not implemented gtk_rc_property_parse_color type object not implemented*)
(*Not implemented gtk_rc_property_parse_enum type object not implemented*)
(*Not implemented gtk_rc_property_parse_flags type object not implemented*)
(*Not implemented gtk_rc_property_parse_requisition type object not implemented*)
