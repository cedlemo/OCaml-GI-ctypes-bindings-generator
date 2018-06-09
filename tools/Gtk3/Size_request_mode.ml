open Ctypes
open Foreign

type t = Height_for_width | Width_for_height | Constant_size

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Height_for_width
  else if v = Unsigned.UInt32.of_int 1 then Width_for_height
  else if v = Unsigned.UInt32.of_int 2 then Constant_size
  else raise (Invalid_argument "Unexpected Size_request_mode value")

let to_value = function
  | Height_for_width -> Unsigned.UInt32.of_int 0
  | Width_for_height -> Unsigned.UInt32.of_int 1
  | Constant_size -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

