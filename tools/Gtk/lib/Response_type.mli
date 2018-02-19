open Ctypes

type t = None | Reject | Accept | Delete_event | Ok | Cancel | Close | Yes | No | Apply | Help

val of_value:
  int32 -> t

val to_value:
  t -> int32

val t_view: t typ

