open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get_current :
  unit -> t ptr option
val cancel :
  t -> unit
(*Not implemented g_cancellable_connect type callback not implemented*)
val disconnect :
  t -> Unsigned.uint64 -> unit
val get_fd :
  t -> int32
val is_cancelled :
  t -> bool
val make_pollfd :
  t -> Poll_fd.t structure ptr -> bool
val pop_current :
  t -> unit
val push_current :
  t -> unit
val release_fd :
  t -> unit
val reset :
  t -> unit
val set_error_if_cancelled :
  t -> (bool, Error.t structure ptr option) result
