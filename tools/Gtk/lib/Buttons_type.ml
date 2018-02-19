open Ctypes
open Foreign

type t = None | Ok | Close | Cancel | Yes_no | Ok_cancel

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Ok
  else if v = Unsigned.UInt32.of_int 2 then Close
  else if v = Unsigned.UInt32.of_int 3 then Cancel
  else if v = Unsigned.UInt32.of_int 4 then Yes_no
  else if v = Unsigned.UInt32.of_int 5 then Ok_cancel
  else raise (Invalid_argument "Unexpected Buttons_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Ok -> Unsigned.UInt32.of_int 1
  | Close -> Unsigned.UInt32.of_int 2
  | Cancel -> Unsigned.UInt32.of_int 3
  | Yes_no -> Unsigned.UInt32.of_int 4
  | Ok_cancel -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

