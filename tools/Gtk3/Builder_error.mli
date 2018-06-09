open Ctypes

type t = Invalid_type_function | Unhandled_tag | Missing_attribute | Invalid_attribute | Invalid_tag | Missing_property_value | Invalid_value | Version_mismatch | Duplicate_id | Object_type_refused | Template_mismatch | Invalid_property | Invalid_signal | Invalid_id

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

