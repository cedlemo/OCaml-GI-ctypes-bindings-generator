open Ctypes
open Foreign

type t = No_drop | Drop_into | Drop_left | Drop_right | Drop_above | Drop_below

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then No_drop
  else if v = Unsigned.UInt32.of_int 1 then Drop_into
  else if v = Unsigned.UInt32.of_int 2 then Drop_left
  else if v = Unsigned.UInt32.of_int 3 then Drop_right
  else if v = Unsigned.UInt32.of_int 4 then Drop_above
  else if v = Unsigned.UInt32.of_int 5 then Drop_below
  else raise (Invalid_argument "Unexpected Icon_view_drop_position value")

let to_value = function
  | No_drop -> Unsigned.UInt32.of_int 0
  | Drop_into -> Unsigned.UInt32.of_int 1
  | Drop_left -> Unsigned.UInt32.of_int 2
  | Drop_right -> Unsigned.UInt32.of_int 3
  | Drop_above -> Unsigned.UInt32.of_int 4
  | Drop_below -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

