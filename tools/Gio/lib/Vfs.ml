open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_vfs_get_default return type object not handled*)
(*Not implemented g_vfs_get_local return type object not handled*)
(*Not implemented g_vfs_get_file_for_path return type interface not handled*)
(*Not implemented g_vfs_get_file_for_uri return type interface not handled*)
(*Not implemented g_vfs_get_supported_uri_schemes return type C Array type for Types.Array tag not handled*)
let is_active =
  foreign "g_vfs_is_active" (ptr t_typ @-> returning (bool))
(*Not implemented g_vfs_parse_name return type interface not handled*)
(*Not implemented g_vfs_register_uri_scheme type callback not implemented*)
let unregister_uri_scheme =
  foreign "g_vfs_unregister_uri_scheme" (ptr t_typ @-> string @-> returning (bool))
