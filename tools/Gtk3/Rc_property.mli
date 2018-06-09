open Ctypes

type t
val t_typ : t structure typ

val f_type_name: (Unsigned.uint32, t structure) field
val f_property_name: (Unsigned.uint32, t structure) field
val f_origin: (string, t structure) field
val f_value: (Value.t structure, t structure) field

val parse_border :
  Param_spec.t -> String.t structure ptr -> Value.t structure ptr -> bool
val parse_color :
  Param_spec.t -> String.t structure ptr -> Value.t structure ptr -> bool
val parse_enum :
  Param_spec.t -> String.t structure ptr -> Value.t structure ptr -> bool
val parse_flags :
  Param_spec.t -> String.t structure ptr -> Value.t structure ptr -> bool
val parse_requisition :
  Param_spec.t -> String.t structure ptr -> Value.t structure ptr -> bool
