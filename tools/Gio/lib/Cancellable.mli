open Ctypes

type t
val t_typ : t typ

(*Not implemented g_cancellable_new return type object not handled*)
(*Not implemented g_cancellable_get_current return type object not handled*)
val cancel:
  t structure ptr -> unit
(*Not implemented g_cancellable_connect type callback not implemented*)
val disconnect:
  t structure ptr -> Unsigned.uint64 -> unit
val get_fd:
  t structure ptr -> int32
val is_cancelled:
  t structure ptr -> bool
val make_pollfd:
  t structure ptr -> Poll_fd.t structure ptr -> bool
val pop_current:
  t structure ptr -> unit
val push_current:
  t structure ptr -> unit
val release_fd:
  t structure ptr -> unit
val reset:
  t structure ptr -> unit
val set_error_if_cancelled:
  t structure ptr -> (bool, Error.t structure ptr option) result
