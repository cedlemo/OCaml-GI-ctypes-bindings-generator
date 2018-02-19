open Ctypes
open Foreign

type t = Initial | Preparing | Generating_data | Sending_data | Pending | Pending_issue | Printing | Finished | Finished_aborted

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Initial
  else if v = Unsigned.UInt32.of_int 1 then Preparing
  else if v = Unsigned.UInt32.of_int 2 then Generating_data
  else if v = Unsigned.UInt32.of_int 3 then Sending_data
  else if v = Unsigned.UInt32.of_int 4 then Pending
  else if v = Unsigned.UInt32.of_int 5 then Pending_issue
  else if v = Unsigned.UInt32.of_int 6 then Printing
  else if v = Unsigned.UInt32.of_int 7 then Finished
  else if v = Unsigned.UInt32.of_int 8 then Finished_aborted
  else raise (Invalid_argument "Unexpected Print_status value")

let to_value = function
  | Initial -> Unsigned.UInt32.of_int 0
  | Preparing -> Unsigned.UInt32.of_int 1
  | Generating_data -> Unsigned.UInt32.of_int 2
  | Sending_data -> Unsigned.UInt32.of_int 3
  | Pending -> Unsigned.UInt32.of_int 4
  | Pending_issue -> Unsigned.UInt32.of_int 5
  | Printing -> Unsigned.UInt32.of_int 6
  | Finished -> Unsigned.UInt32.of_int 7
  | Finished_aborted -> Unsigned.UInt32.of_int 8

let t_view = view ~read:of_value ~write:to_value uint32_t

