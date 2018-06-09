open Ctypes
open Foreign

type t = None | In | Out | Etched_in | Etched_out

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then In
  else if v = Unsigned.UInt32.of_int 2 then Out
  else if v = Unsigned.UInt32.of_int 3 then Etched_in
  else if v = Unsigned.UInt32.of_int 4 then Etched_out
  else raise (Invalid_argument "Unexpected Shadow_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | In -> Unsigned.UInt32.of_int 1
  | Out -> Unsigned.UInt32.of_int 2
  | Etched_in -> Unsigned.UInt32.of_int 3
  | Etched_out -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

