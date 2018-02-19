open Ctypes
open Foreign

type t = Parent | Queue | Immediate

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Parent
  else if v = Unsigned.UInt32.of_int 1 then Queue
  else if v = Unsigned.UInt32.of_int 2 then Immediate
  else raise (Invalid_argument "Unexpected Resize_mode value")

let to_value = function
  | Parent -> Unsigned.UInt32.of_int 0
  | Queue -> Unsigned.UInt32.of_int 1
  | Immediate -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

