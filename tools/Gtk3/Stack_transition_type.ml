open Ctypes
open Foreign

type t = None | Crossfade | Slide_right | Slide_left | Slide_up | Slide_down | Slide_left_right | Slide_up_down | Over_up | Over_down | Over_left | Over_right | Under_up | Under_down | Under_left | Under_right | Over_up_down | Over_down_up | Over_left_right | Over_right_left

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Crossfade
  else if v = Unsigned.UInt32.of_int 2 then Slide_right
  else if v = Unsigned.UInt32.of_int 3 then Slide_left
  else if v = Unsigned.UInt32.of_int 4 then Slide_up
  else if v = Unsigned.UInt32.of_int 5 then Slide_down
  else if v = Unsigned.UInt32.of_int 6 then Slide_left_right
  else if v = Unsigned.UInt32.of_int 7 then Slide_up_down
  else if v = Unsigned.UInt32.of_int 8 then Over_up
  else if v = Unsigned.UInt32.of_int 9 then Over_down
  else if v = Unsigned.UInt32.of_int 10 then Over_left
  else if v = Unsigned.UInt32.of_int 11 then Over_right
  else if v = Unsigned.UInt32.of_int 12 then Under_up
  else if v = Unsigned.UInt32.of_int 13 then Under_down
  else if v = Unsigned.UInt32.of_int 14 then Under_left
  else if v = Unsigned.UInt32.of_int 15 then Under_right
  else if v = Unsigned.UInt32.of_int 16 then Over_up_down
  else if v = Unsigned.UInt32.of_int 17 then Over_down_up
  else if v = Unsigned.UInt32.of_int 18 then Over_left_right
  else if v = Unsigned.UInt32.of_int 19 then Over_right_left
  else raise (Invalid_argument "Unexpected Stack_transition_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Crossfade -> Unsigned.UInt32.of_int 1
  | Slide_right -> Unsigned.UInt32.of_int 2
  | Slide_left -> Unsigned.UInt32.of_int 3
  | Slide_up -> Unsigned.UInt32.of_int 4
  | Slide_down -> Unsigned.UInt32.of_int 5
  | Slide_left_right -> Unsigned.UInt32.of_int 6
  | Slide_up_down -> Unsigned.UInt32.of_int 7
  | Over_up -> Unsigned.UInt32.of_int 8
  | Over_down -> Unsigned.UInt32.of_int 9
  | Over_left -> Unsigned.UInt32.of_int 10
  | Over_right -> Unsigned.UInt32.of_int 11
  | Under_up -> Unsigned.UInt32.of_int 12
  | Under_down -> Unsigned.UInt32.of_int 13
  | Under_left -> Unsigned.UInt32.of_int 14
  | Under_right -> Unsigned.UInt32.of_int 15
  | Over_up_down -> Unsigned.UInt32.of_int 16
  | Over_down_up -> Unsigned.UInt32.of_int 17
  | Over_left_right -> Unsigned.UInt32.of_int 18
  | Over_right_left -> Unsigned.UInt32.of_int 19

let t_view = view ~read:of_value ~write:to_value uint32_t

