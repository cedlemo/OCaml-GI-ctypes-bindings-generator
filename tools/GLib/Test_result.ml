open Ctypes
open Foreign

type t = Success | Skipped | Failure | Incomplete

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Success
  else if v = Unsigned.UInt32.of_int 1 then Skipped
  else if v = Unsigned.UInt32.of_int 2 then Failure
  else if v = Unsigned.UInt32.of_int 3 then Incomplete
  else raise (Invalid_argument "Unexpected Test_result value")

let to_value = function
  | Success -> Unsigned.UInt32.of_int 0
  | Skipped -> Unsigned.UInt32.of_int 1
  | Failure -> Unsigned.UInt32.of_int 2
  | Incomplete -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

