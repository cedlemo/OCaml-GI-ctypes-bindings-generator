open Ctypes
open Foreign

type t = None | Claimed | Denied

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Claimed
  else if v = Unsigned.UInt32.of_int 2 then Denied
  else raise (Invalid_argument "Unexpected Event_sequence_state value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Claimed -> Unsigned.UInt32.of_int 1
  | Denied -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

