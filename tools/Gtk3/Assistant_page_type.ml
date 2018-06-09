open Ctypes
open Foreign

type t = Content | Intro | Confirm | Summary | Progress | Custom

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Content
  else if v = Unsigned.UInt32.of_int 1 then Intro
  else if v = Unsigned.UInt32.of_int 2 then Confirm
  else if v = Unsigned.UInt32.of_int 3 then Summary
  else if v = Unsigned.UInt32.of_int 4 then Progress
  else if v = Unsigned.UInt32.of_int 5 then Custom
  else raise (Invalid_argument "Unexpected Assistant_page_type value")

let to_value = function
  | Content -> Unsigned.UInt32.of_int 0
  | Intro -> Unsigned.UInt32.of_int 1
  | Confirm -> Unsigned.UInt32.of_int 2
  | Summary -> Unsigned.UInt32.of_int 3
  | Progress -> Unsigned.UInt32.of_int 4
  | Custom -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

