open Ctypes
open Foreign

type t = Free_form | Alpha | Digits | Number | Phone | Url | Email | Name | Password | Pin

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Free_form
  else if v = Unsigned.UInt32.of_int 1 then Alpha
  else if v = Unsigned.UInt32.of_int 2 then Digits
  else if v = Unsigned.UInt32.of_int 3 then Number
  else if v = Unsigned.UInt32.of_int 4 then Phone
  else if v = Unsigned.UInt32.of_int 5 then Url
  else if v = Unsigned.UInt32.of_int 6 then Email
  else if v = Unsigned.UInt32.of_int 7 then Name
  else if v = Unsigned.UInt32.of_int 8 then Password
  else if v = Unsigned.UInt32.of_int 9 then Pin
  else raise (Invalid_argument "Unexpected Input_purpose value")

let to_value = function
  | Free_form -> Unsigned.UInt32.of_int 0
  | Alpha -> Unsigned.UInt32.of_int 1
  | Digits -> Unsigned.UInt32.of_int 2
  | Number -> Unsigned.UInt32.of_int 3
  | Phone -> Unsigned.UInt32.of_int 4
  | Url -> Unsigned.UInt32.of_int 5
  | Email -> Unsigned.UInt32.of_int 6
  | Name -> Unsigned.UInt32.of_int 7
  | Password -> Unsigned.UInt32.of_int 8
  | Pin -> Unsigned.UInt32.of_int 9

let t_view = view ~read:of_value ~write:to_value uint32_t

