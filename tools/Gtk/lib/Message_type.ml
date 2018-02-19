open Ctypes
open Foreign

type t = Info | Warning | Question | Error | Other

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Info
  else if v = Unsigned.UInt32.of_int 1 then Warning
  else if v = Unsigned.UInt32.of_int 2 then Question
  else if v = Unsigned.UInt32.of_int 3 then Error
  else if v = Unsigned.UInt32.of_int 4 then Other
  else raise (Invalid_argument "Unexpected Message_type value")

let to_value = function
  | Info -> Unsigned.UInt32.of_int 0
  | Warning -> Unsigned.UInt32.of_int 1
  | Question -> Unsigned.UInt32.of_int 2
  | Error -> Unsigned.UInt32.of_int 3
  | Other -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

