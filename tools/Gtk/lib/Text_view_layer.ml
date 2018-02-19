open Ctypes
open Foreign

type t = Below | Above | Below_text | Above_text

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Below
  else if v = Unsigned.UInt32.of_int 1 then Above
  else if v = Unsigned.UInt32.of_int 2 then Below_text
  else if v = Unsigned.UInt32.of_int 3 then Above_text
  else raise (Invalid_argument "Unexpected Text_view_layer value")

let to_value = function
  | Below -> Unsigned.UInt32.of_int 0
  | Above -> Unsigned.UInt32.of_int 1
  | Below_text -> Unsigned.UInt32.of_int 2
  | Above_text -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

