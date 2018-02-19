open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_icon_theme_new return type object not handled*)
(*Not implemented gtk_icon_theme_add_builtin_icon type object not implemented*)
(*Not implemented gtk_icon_theme_get_default return type object not handled*)
(*Not implemented gtk_icon_theme_get_for_screen type object not implemented*)
let add_resource_path =
  foreign "gtk_icon_theme_add_resource_path" (ptr t_typ @-> string @-> returning (void))
let append_search_path =
  foreign "gtk_icon_theme_append_search_path" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_icon_theme_choose_icon type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_theme_choose_icon_for_scale type C Array type for Types.Array tag not implemented*)
let get_example_icon_name =
  foreign "gtk_icon_theme_get_example_icon_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_icon_theme_get_icon_sizes return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_icon_theme_get_search_path type C Array type for Types.Array tag not implemented*)
let has_icon =
  foreign "gtk_icon_theme_has_icon" (ptr t_typ @-> string @-> returning (bool))
let list_contexts =
  foreign "gtk_icon_theme_list_contexts" (ptr t_typ @-> returning (ptr List.t_typ))
let list_icons =
  foreign "gtk_icon_theme_list_icons" (ptr t_typ @-> string_opt @-> returning (ptr List.t_typ))
(*Not implemented gtk_icon_theme_load_icon return type object not handled*)
(*Not implemented gtk_icon_theme_load_icon_for_scale return type object not handled*)
(*Not implemented gtk_icon_theme_load_surface type object not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon_for_scale type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_icon return type object not handled*)
(*Not implemented gtk_icon_theme_lookup_icon_for_scale return type object not handled*)
let prepend_search_path =
  foreign "gtk_icon_theme_prepend_search_path" (ptr t_typ @-> string @-> returning (void))
let rescan_if_needed =
  foreign "gtk_icon_theme_rescan_if_needed" (ptr t_typ @-> returning (bool))
let set_custom_theme =
  foreign "gtk_icon_theme_set_custom_theme" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_icon_theme_set_screen type object not implemented*)
(*Not implemented gtk_icon_theme_set_search_path type C Array type for Types.Array tag not implemented*)
