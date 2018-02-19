open Ctypes
open Foreign

type t = None | Capture | Bubble | Target

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Capture
  else if v = Unsigned.UInt32.of_int 2 then Bubble
  else if v = Unsigned.UInt32.of_int 3 then Target
  else raise (Invalid_argument "Unexpected Propagation_phase value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Capture -> Unsigned.UInt32.of_int 1
  | Bubble -> Unsigned.UInt32.of_int 2
  | Target -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

