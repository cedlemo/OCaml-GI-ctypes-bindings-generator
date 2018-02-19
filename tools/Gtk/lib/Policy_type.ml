open Ctypes
open Foreign

type t = Always | Automatic | Never | External

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Always
  else if v = Unsigned.UInt32.of_int 1 then Automatic
  else if v = Unsigned.UInt32.of_int 2 then Never
  else if v = Unsigned.UInt32.of_int 3 then External
  else raise (Invalid_argument "Unexpected Policy_type value")

let to_value = function
  | Always -> Unsigned.UInt32.of_int 0
  | Automatic -> Unsigned.UInt32.of_int 1
  | Never -> Unsigned.UInt32.of_int 2
  | External -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

