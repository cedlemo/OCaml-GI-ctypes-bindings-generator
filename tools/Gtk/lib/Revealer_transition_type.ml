open Ctypes
open Foreign

type t = None | Crossfade | Slide_right | Slide_left | Slide_up | Slide_down

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Crossfade
  else if v = Unsigned.UInt32.of_int 2 then Slide_right
  else if v = Unsigned.UInt32.of_int 3 then Slide_left
  else if v = Unsigned.UInt32.of_int 4 then Slide_up
  else if v = Unsigned.UInt32.of_int 5 then Slide_down
  else raise (Invalid_argument "Unexpected Revealer_transition_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Crossfade -> Unsigned.UInt32.of_int 1
  | Slide_right -> Unsigned.UInt32.of_int 2
  | Slide_left -> Unsigned.UInt32.of_int 3
  | Slide_up -> Unsigned.UInt32.of_int 4
  | Slide_down -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

