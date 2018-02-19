open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Rc_property"

let f_type_name = field t_typ "type_name" (uint32_t)
let f_property_name = field t_typ "property_name" (uint32_t)
let f_origin = field t_typ "origin" (string)
let f_value = field t_typ "value" (Value.t_typ)
let _ = seal t_typ

(*Not implemented gtk_rc_property_parse_border type object not implemented*)
(*Not implemented gtk_rc_property_parse_color type object not implemented*)
(*Not implemented gtk_rc_property_parse_enum type object not implemented*)
(*Not implemented gtk_rc_property_parse_flags type object not implemented*)
(*Not implemented gtk_rc_property_parse_requisition type object not implemented*)
