open Ctypes
open Foreign

type t = Steps | Pages | Ends | Horizontal_steps | Horizontal_pages | Horizontal_ends

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Steps
  else if v = Unsigned.UInt32.of_int 1 then Pages
  else if v = Unsigned.UInt32.of_int 2 then Ends
  else if v = Unsigned.UInt32.of_int 3 then Horizontal_steps
  else if v = Unsigned.UInt32.of_int 4 then Horizontal_pages
  else if v = Unsigned.UInt32.of_int 5 then Horizontal_ends
  else raise (Invalid_argument "Unexpected Scroll_step value")

let to_value = function
  | Steps -> Unsigned.UInt32.of_int 0
  | Pages -> Unsigned.UInt32.of_int 1
  | Ends -> Unsigned.UInt32.of_int 2
  | Horizontal_steps -> Unsigned.UInt32.of_int 3
  | Horizontal_pages -> Unsigned.UInt32.of_int 4
  | Horizontal_ends -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

