open Ctypes
open Foreign

type t = Fill | Start | End | Center | Baseline

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Fill
  else if v = Unsigned.UInt32.of_int 1 then Start
  else if v = Unsigned.UInt32.of_int 2 then End
  else if v = Unsigned.UInt32.of_int 3 then Center
  else if v = Unsigned.UInt32.of_int 4 then Baseline
  else raise (Invalid_argument "Unexpected Align value")

let to_value = function
  | Fill -> Unsigned.UInt32.of_int 0
  | Start -> Unsigned.UInt32.of_int 1
  | End -> Unsigned.UInt32.of_int 2
  | Center -> Unsigned.UInt32.of_int 3
  | Baseline -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

