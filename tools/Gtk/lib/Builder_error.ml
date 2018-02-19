open Ctypes
open Foreign

type t = Invalid_type_function | Unhandled_tag | Missing_attribute | Invalid_attribute | Invalid_tag | Missing_property_value | Invalid_value | Version_mismatch | Duplicate_id | Object_type_refused | Template_mismatch | Invalid_property | Invalid_signal | Invalid_id

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Invalid_type_function
  else if v = Unsigned.UInt32.of_int 1 then Unhandled_tag
  else if v = Unsigned.UInt32.of_int 2 then Missing_attribute
  else if v = Unsigned.UInt32.of_int 3 then Invalid_attribute
  else if v = Unsigned.UInt32.of_int 4 then Invalid_tag
  else if v = Unsigned.UInt32.of_int 5 then Missing_property_value
  else if v = Unsigned.UInt32.of_int 6 then Invalid_value
  else if v = Unsigned.UInt32.of_int 7 then Version_mismatch
  else if v = Unsigned.UInt32.of_int 8 then Duplicate_id
  else if v = Unsigned.UInt32.of_int 9 then Object_type_refused
  else if v = Unsigned.UInt32.of_int 10 then Template_mismatch
  else if v = Unsigned.UInt32.of_int 11 then Invalid_property
  else if v = Unsigned.UInt32.of_int 12 then Invalid_signal
  else if v = Unsigned.UInt32.of_int 13 then Invalid_id
  else raise (Invalid_argument "Unexpected Builder_error value")

let to_value = function
  | Invalid_type_function -> Unsigned.UInt32.of_int 0
  | Unhandled_tag -> Unsigned.UInt32.of_int 1
  | Missing_attribute -> Unsigned.UInt32.of_int 2
  | Invalid_attribute -> Unsigned.UInt32.of_int 3
  | Invalid_tag -> Unsigned.UInt32.of_int 4
  | Missing_property_value -> Unsigned.UInt32.of_int 5
  | Invalid_value -> Unsigned.UInt32.of_int 6
  | Version_mismatch -> Unsigned.UInt32.of_int 7
  | Duplicate_id -> Unsigned.UInt32.of_int 8
  | Object_type_refused -> Unsigned.UInt32.of_int 9
  | Template_mismatch -> Unsigned.UInt32.of_int 10
  | Invalid_property -> Unsigned.UInt32.of_int 11
  | Invalid_signal -> Unsigned.UInt32.of_int 12
  | Invalid_id -> Unsigned.UInt32.of_int 13

let t_view = view ~read:of_value ~write:to_value uint32_t

