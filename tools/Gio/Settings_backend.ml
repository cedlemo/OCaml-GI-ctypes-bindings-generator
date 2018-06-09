open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_settings_backend_flatten_tree type C Array type for Types.Array tag not implemented*)
let get_default =
  foreign "g_settings_backend_get_default" (void @-> returning (t_typ))
let changed =
  foreign "g_settings_backend_changed" (t_typ @-> string @-> ptr_opt void @-> returning (void))
let changed_tree =
  foreign "g_settings_backend_changed_tree" (t_typ @-> ptr Tree.t_typ @-> ptr_opt void @-> returning (void))
(*Not implemented g_settings_backend_keys_changed type C Array type for Types.Array tag not implemented*)
let path_changed =
  foreign "g_settings_backend_path_changed" (t_typ @-> string @-> ptr_opt void @-> returning (void))
let path_writable_changed =
  foreign "g_settings_backend_path_writable_changed" (t_typ @-> string @-> returning (void))
let writable_changed =
  foreign "g_settings_backend_writable_changed" (t_typ @-> string @-> returning (void))
