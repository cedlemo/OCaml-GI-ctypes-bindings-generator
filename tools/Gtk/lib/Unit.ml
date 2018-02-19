open Ctypes
open Foreign

type t = None | Points | Inch | Mm

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Points
  else if v = Unsigned.UInt32.of_int 2 then Inch
  else if v = Unsigned.UInt32.of_int 3 then Mm
  else raise (Invalid_argument "Unexpected Unit value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Points -> Unsigned.UInt32.of_int 1
  | Inch -> Unsigned.UInt32.of_int 2
  | Mm -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

