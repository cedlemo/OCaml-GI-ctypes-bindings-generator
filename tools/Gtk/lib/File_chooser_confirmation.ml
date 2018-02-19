open Ctypes
open Foreign

type t = Confirm | Accept_filename | Select_again

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Confirm
  else if v = Unsigned.UInt32.of_int 1 then Accept_filename
  else if v = Unsigned.UInt32.of_int 2 then Select_again
  else raise (Invalid_argument "Unexpected File_chooser_confirmation value")

let to_value = function
  | Confirm -> Unsigned.UInt32.of_int 0
  | Accept_filename -> Unsigned.UInt32.of_int 1
  | Select_again -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

