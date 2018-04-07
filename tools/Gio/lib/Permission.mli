open Ctypes

type t
val t_typ : t typ

val acquire :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_permission_acquire_async type callback not implemented*)
(*Not implemented g_permission_acquire_finish type interface not implemented*)
val get_allowed :
  t -> bool
val get_can_acquire :
  t -> bool
val get_can_release :
  t -> bool
val impl_update :
  t -> bool -> bool -> bool -> unit
val release :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
(*Not implemented g_permission_release_async type callback not implemented*)
(*Not implemented g_permission_release_finish type interface not implemented*)
