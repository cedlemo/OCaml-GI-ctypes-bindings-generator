open Ctypes
open Foreign

type t = None | Char | Word | Word_char

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Char
  else if v = Unsigned.UInt32.of_int 2 then Word
  else if v = Unsigned.UInt32.of_int 3 then Word_char
  else raise (Invalid_argument "Unexpected Wrap_mode value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Char -> Unsigned.UInt32.of_int 1
  | Word -> Unsigned.UInt32.of_int 2
  | Word_char -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

