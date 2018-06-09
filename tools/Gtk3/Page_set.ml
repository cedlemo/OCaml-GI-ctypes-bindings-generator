open Ctypes
open Foreign

type t = All | Even | Odd

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then All
  else if v = Unsigned.UInt32.of_int 1 then Even
  else if v = Unsigned.UInt32.of_int 2 then Odd
  else raise (Invalid_argument "Unexpected Page_set value")

let to_value = function
  | All -> Unsigned.UInt32.of_int 0
  | Even -> Unsigned.UInt32.of_int 1
  | Odd -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

