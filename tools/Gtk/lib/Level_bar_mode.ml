open Ctypes
open Foreign

type t = Continuous | Discrete

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Continuous
  else if v = Unsigned.UInt32.of_int 1 then Discrete
  else raise (Invalid_argument "Unexpected Level_bar_mode value")

let to_value = function
  | Continuous -> Unsigned.UInt32.of_int 0
  | Discrete -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

