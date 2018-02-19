open Ctypes
open Foreign

type t = Spread | Edge | Start | End | Center | Expand

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Spread
  else if v = Unsigned.UInt32.of_int 2 then Edge
  else if v = Unsigned.UInt32.of_int 3 then Start
  else if v = Unsigned.UInt32.of_int 4 then End
  else if v = Unsigned.UInt32.of_int 5 then Center
  else if v = Unsigned.UInt32.of_int 6 then Expand
  else raise (Invalid_argument "Unexpected Button_box_style value")

let to_value = function
  | Spread -> Unsigned.UInt32.of_int 1
  | Edge -> Unsigned.UInt32.of_int 2
  | Start -> Unsigned.UInt32.of_int 3
  | End -> Unsigned.UInt32.of_int 4
  | Center -> Unsigned.UInt32.of_int 5
  | Expand -> Unsigned.UInt32.of_int 6

let t_view = view ~read:of_value ~write:to_value uint32_t

