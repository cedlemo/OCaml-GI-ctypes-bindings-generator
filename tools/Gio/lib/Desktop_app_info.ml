open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_desktop_app_info_new return type object not handled*)
(*Not implemented g_desktop_app_info_new_from_filename return type object not handled*)
(*Not implemented g_desktop_app_info_new_from_keyfile return type object not handled*)
let get_implementations =
  foreign "g_desktop_app_info_get_implementations" (string @-> returning (ptr List.t_typ))
(*Not implemented g_desktop_app_info_search return type C Array type for Types.Array tag not handled*)
let set_desktop_env =
  foreign "g_desktop_app_info_set_desktop_env" (string @-> returning (void))
let get_action_name =
  foreign "g_desktop_app_info_get_action_name" (ptr t_typ @-> string @-> returning (string_opt))
let get_boolean =
  foreign "g_desktop_app_info_get_boolean" (ptr t_typ @-> string @-> returning (bool))
let get_categories =
  foreign "g_desktop_app_info_get_categories" (ptr t_typ @-> returning (string_opt))
let get_filename =
  foreign "g_desktop_app_info_get_filename" (ptr t_typ @-> returning (string_opt))
let get_generic_name =
  foreign "g_desktop_app_info_get_generic_name" (ptr t_typ @-> returning (string_opt))
let get_is_hidden =
  foreign "g_desktop_app_info_get_is_hidden" (ptr t_typ @-> returning (bool))
(*Not implemented g_desktop_app_info_get_keywords return type C Array type for Types.Array tag not handled*)
let get_nodisplay =
  foreign "g_desktop_app_info_get_nodisplay" (ptr t_typ @-> returning (bool))
let get_show_in =
  foreign "g_desktop_app_info_get_show_in" (ptr t_typ @-> string_opt @-> returning (bool))
let get_startup_wm_class =
  foreign "g_desktop_app_info_get_startup_wm_class" (ptr t_typ @-> returning (string_opt))
let get_string =
  foreign "g_desktop_app_info_get_string" (ptr t_typ @-> string @-> returning (string_opt))
let has_key =
  foreign "g_desktop_app_info_has_key" (ptr t_typ @-> string @-> returning (bool))
(*Not implemented g_desktop_app_info_launch_action type object not implemented*)
(*Not implemented g_desktop_app_info_launch_uris_as_manager type object not implemented*)
(*Not implemented g_desktop_app_info_list_actions return type C Array type for Types.Array tag not handled*)
