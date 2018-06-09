open Ctypes
open Foreign

type t = Error | Apply | Cancel | In_progress

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Error
  else if v = Unsigned.UInt32.of_int 1 then Apply
  else if v = Unsigned.UInt32.of_int 2 then Cancel
  else if v = Unsigned.UInt32.of_int 3 then In_progress
  else raise (Invalid_argument "Unexpected Print_operation_result value")

let to_value = function
  | Error -> Unsigned.UInt32.of_int 0
  | Apply -> Unsigned.UInt32.of_int 1
  | Cancel -> Unsigned.UInt32.of_int 2
  | In_progress -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

