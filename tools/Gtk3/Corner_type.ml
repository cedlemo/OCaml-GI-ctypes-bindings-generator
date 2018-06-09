open Ctypes
open Foreign

type t = Top_left | Bottom_left | Top_right | Bottom_right

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Top_left
  else if v = Unsigned.UInt32.of_int 1 then Bottom_left
  else if v = Unsigned.UInt32.of_int 2 then Top_right
  else if v = Unsigned.UInt32.of_int 3 then Bottom_right
  else raise (Invalid_argument "Unexpected Corner_type value")

let to_value = function
  | Top_left -> Unsigned.UInt32.of_int 0
  | Bottom_left -> Unsigned.UInt32.of_int 1
  | Top_right -> Unsigned.UInt32.of_int 2
  | Bottom_right -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

