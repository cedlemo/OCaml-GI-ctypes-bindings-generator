open Ctypes
open Foreign

type t = Word | Line

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Word
  else if v = Unsigned.UInt32.of_int 1 then Line
  else raise (Invalid_argument "Unexpected Text_extend_selection value")

let to_value = function
  | Word -> Unsigned.UInt32.of_int 0
  | Line -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

