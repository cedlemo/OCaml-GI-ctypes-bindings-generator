open Ctypes
open Foreign

type t = Low | Normal | High | Draft

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Low
  else if v = Unsigned.UInt32.of_int 1 then Normal
  else if v = Unsigned.UInt32.of_int 2 then High
  else if v = Unsigned.UInt32.of_int 3 then Draft
  else raise (Invalid_argument "Unexpected Print_quality value")

let to_value = function
  | Low -> Unsigned.UInt32.of_int 0
  | Normal -> Unsigned.UInt32.of_int 1
  | High -> Unsigned.UInt32.of_int 2
  | Draft -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

