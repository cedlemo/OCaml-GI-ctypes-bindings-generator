open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_settings_backend_flatten_tree type C Array type for Types.Array tag not implemented*)
(*Not implemented g_settings_backend_get_default return type object not handled*)
let changed =
  foreign "g_settings_backend_changed" (ptr t_typ @-> string @-> ptr_opt void @-> returning (void))
let changed_tree =
  foreign "g_settings_backend_changed_tree" (ptr t_typ @-> ptr Tree.t_typ @-> ptr_opt void @-> returning (void))
(*Not implemented g_settings_backend_keys_changed type C Array type for Types.Array tag not implemented*)
let path_changed =
  foreign "g_settings_backend_path_changed" (ptr t_typ @-> string @-> ptr_opt void @-> returning (void))
let path_writable_changed =
  foreign "g_settings_backend_path_writable_changed" (ptr t_typ @-> string @-> returning (void))
let writable_changed =
  foreign "g_settings_backend_writable_changed" (ptr t_typ @-> string @-> returning (void))
