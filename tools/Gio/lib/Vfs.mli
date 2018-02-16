open Ctypes

type t
val t_typ : t typ

(*Not implemented g_vfs_get_default return type object not handled*)
(*Not implemented g_vfs_get_local return type object not handled*)
(*Not implemented g_vfs_get_file_for_path return type interface not handled*)
(*Not implemented g_vfs_get_file_for_uri return type interface not handled*)
(*Not implemented g_vfs_get_supported_uri_schemes return type C Array type for Types.Array tag not handled*)
val is_active:
  t structure ptr -> bool
(*Not implemented g_vfs_parse_name return type interface not handled*)
(*Not implemented g_vfs_register_uri_scheme type callback not implemented*)
val unregister_uri_scheme:
  t structure ptr -> string -> bool
