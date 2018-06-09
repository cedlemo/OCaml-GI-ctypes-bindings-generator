open Ctypes
open Foreign

type t = None | Reject | Accept | Delete_event | Ok | Cancel | Close | Yes | No | Apply | Help

let of_value v =
  if v = Int32.of_int (-1) then None
  else if v = Int32.of_int (-2) then Reject
  else if v = Int32.of_int (-3) then Accept
  else if v = Int32.of_int (-4) then Delete_event
  else if v = Int32.of_int (-5) then Ok
  else if v = Int32.of_int (-6) then Cancel
  else if v = Int32.of_int (-7) then Close
  else if v = Int32.of_int (-8) then Yes
  else if v = Int32.of_int (-9) then No
  else if v = Int32.of_int (-10) then Apply
  else if v = Int32.of_int (-11) then Help
  else raise (Invalid_argument "Unexpected Response_type value")

let to_value = function
  | None -> Int32.of_int (-1)
  | Reject -> Int32.of_int (-2)
  | Accept -> Int32.of_int (-3)
  | Delete_event -> Int32.of_int (-4)
  | Ok -> Int32.of_int (-5)
  | Cancel -> Int32.of_int (-6)
  | Close -> Int32.of_int (-7)
  | Yes -> Int32.of_int (-8)
  | No -> Int32.of_int (-9)
  | Apply -> Int32.of_int (-10)
  | Help -> Int32.of_int (-11)

let t_view = view ~read:of_value ~write:to_value int32_t

