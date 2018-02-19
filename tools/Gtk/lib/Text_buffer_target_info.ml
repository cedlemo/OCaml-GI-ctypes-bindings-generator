open Ctypes
open Foreign

type t = Buffer_contents | Rich_text | Text

let of_value v =
  if v = Int32.of_int (-1) then Buffer_contents
  else if v = Int32.of_int (-2) then Rich_text
  else if v = Int32.of_int (-3) then Text
  else raise (Invalid_argument "Unexpected Text_buffer_target_info value")

let to_value = function
  | Buffer_contents -> Int32.of_int (-1)
  | Rich_text -> Int32.of_int (-2)
  | Text -> Int32.of_int (-3)

let t_view = view ~read:of_value ~write:to_value int32_t

