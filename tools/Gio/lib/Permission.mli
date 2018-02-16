open Ctypes

type t
val t_typ : t typ

(*Not implemented g_permission_acquire type object not implemented*)
(*Not implemented g_permission_acquire_async type object not implemented*)
(*Not implemented g_permission_acquire_finish type interface not implemented*)
val get_allowed:
  t structure ptr -> bool
val get_can_acquire:
  t structure ptr -> bool
val get_can_release:
  t structure ptr -> bool
val impl_update:
  t structure ptr -> bool -> bool -> bool -> unit
(*Not implemented g_permission_release type object not implemented*)
(*Not implemented g_permission_release_async type object not implemented*)
(*Not implemented g_permission_release_finish type interface not implemented*)
