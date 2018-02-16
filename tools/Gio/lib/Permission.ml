open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_permission_acquire type object not implemented*)
(*Not implemented g_permission_acquire_async type object not implemented*)
(*Not implemented g_permission_acquire_finish type interface not implemented*)
let get_allowed =
  foreign "g_permission_get_allowed" (ptr t_typ @-> returning (bool))
let get_can_acquire =
  foreign "g_permission_get_can_acquire" (ptr t_typ @-> returning (bool))
let get_can_release =
  foreign "g_permission_get_can_release" (ptr t_typ @-> returning (bool))
let impl_update =
  foreign "g_permission_impl_update" (ptr t_typ @-> bool @-> bool @-> bool @-> returning (void))
(*Not implemented g_permission_release type object not implemented*)
(*Not implemented g_permission_release_async type object not implemented*)
(*Not implemented g_permission_release_finish type interface not implemented*)
