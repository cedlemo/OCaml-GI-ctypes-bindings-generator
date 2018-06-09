open Ctypes
open Foreign

type t = None | Jump | Step_backward | Step_forward | Page_backward | Page_forward | Step_up | Step_down | Page_up | Page_down | Step_left | Step_right | Page_left | Page_right | Start | End

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Jump
  else if v = Unsigned.UInt32.of_int 2 then Step_backward
  else if v = Unsigned.UInt32.of_int 3 then Step_forward
  else if v = Unsigned.UInt32.of_int 4 then Page_backward
  else if v = Unsigned.UInt32.of_int 5 then Page_forward
  else if v = Unsigned.UInt32.of_int 6 then Step_up
  else if v = Unsigned.UInt32.of_int 7 then Step_down
  else if v = Unsigned.UInt32.of_int 8 then Page_up
  else if v = Unsigned.UInt32.of_int 9 then Page_down
  else if v = Unsigned.UInt32.of_int 10 then Step_left
  else if v = Unsigned.UInt32.of_int 11 then Step_right
  else if v = Unsigned.UInt32.of_int 12 then Page_left
  else if v = Unsigned.UInt32.of_int 13 then Page_right
  else if v = Unsigned.UInt32.of_int 14 then Start
  else if v = Unsigned.UInt32.of_int 15 then End
  else raise (Invalid_argument "Unexpected Scroll_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Jump -> Unsigned.UInt32.of_int 1
  | Step_backward -> Unsigned.UInt32.of_int 2
  | Step_forward -> Unsigned.UInt32.of_int 3
  | Page_backward -> Unsigned.UInt32.of_int 4
  | Page_forward -> Unsigned.UInt32.of_int 5
  | Step_up -> Unsigned.UInt32.of_int 6
  | Step_down -> Unsigned.UInt32.of_int 7
  | Page_up -> Unsigned.UInt32.of_int 8
  | Page_down -> Unsigned.UInt32.of_int 9
  | Step_left -> Unsigned.UInt32.of_int 10
  | Step_right -> Unsigned.UInt32.of_int 11
  | Page_left -> Unsigned.UInt32.of_int 12
  | Page_right -> Unsigned.UInt32.of_int 13
  | Start -> Unsigned.UInt32.of_int 14
  | End -> Unsigned.UInt32.of_int 15

let t_view = view ~read:of_value ~write:to_value uint32_t

