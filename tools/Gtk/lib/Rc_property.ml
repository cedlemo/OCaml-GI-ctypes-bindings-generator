open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Rc_property"

let f_type_name = field t_typ "type_name" (uint32_t)
let f_property_name = field t_typ "property_name" (uint32_t)
let f_origin = field t_typ "origin" (string)
let f_value = field t_typ "value" (Value.t_typ)
let _ = seal t_typ

let parse_border =
  foreign "gtk_rc_property_parse_border" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))
let parse_color =
  foreign "gtk_rc_property_parse_color" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))
let parse_enum =
  foreign "gtk_rc_property_parse_enum" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))
let parse_flags =
  foreign "gtk_rc_property_parse_flags" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))
let parse_requisition =
  foreign "gtk_rc_property_parse_requisition" (Param_spec.t_typ @-> ptr String.t_typ @-> ptr Value.t_typ @-> returning (bool))
