open Ctypes
open Foreign

type t = Open | Save | Select_folder | Create_folder

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Open
  else if v = Unsigned.UInt32.of_int 1 then Save
  else if v = Unsigned.UInt32.of_int 2 then Select_folder
  else if v = Unsigned.UInt32.of_int 3 then Create_folder
  else raise (Invalid_argument "Unexpected File_chooser_action value")

let to_value = function
  | Open -> Unsigned.UInt32.of_int 0
  | Save -> Unsigned.UInt32.of_int 1
  | Select_folder -> Unsigned.UInt32.of_int 2
  | Create_folder -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

