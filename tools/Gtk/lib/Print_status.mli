open Ctypes

type t = Initial | Preparing | Generating_data | Sending_data | Pending | Pending_issue | Printing | Finished | Finished_aborted

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

