open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_desktop_app_info_new" (string @-> returning (t_typ))
let create_from_filename =
  foreign "g_desktop_app_info_new_from_filename" (string @-> returning (t_typ))
let create_from_keyfile =
  foreign "g_desktop_app_info_new_from_keyfile" (ptr Key_file.t_typ @-> returning (t_typ))
let get_implementations =
  foreign "g_desktop_app_info_get_implementations" (string @-> returning (ptr List.t_typ))
(*Not implemented g_desktop_app_info_search return type C Array type for Types.Array tag not handled*)
let set_desktop_env =
  foreign "g_desktop_app_info_set_desktop_env" (string @-> returning (void))
let get_action_name =
  foreign "g_desktop_app_info_get_action_name" (t_typ @-> string @-> returning (string_opt))
let get_boolean =
  foreign "g_desktop_app_info_get_boolean" (t_typ @-> string @-> returning (bool))
let get_categories =
  foreign "g_desktop_app_info_get_categories" (t_typ @-> returning (string_opt))
let get_filename =
  foreign "g_desktop_app_info_get_filename" (t_typ @-> returning (string_opt))
let get_generic_name =
  foreign "g_desktop_app_info_get_generic_name" (t_typ @-> returning (string_opt))
let get_is_hidden =
  foreign "g_desktop_app_info_get_is_hidden" (t_typ @-> returning (bool))
(*Not implemented g_desktop_app_info_get_keywords return type C Array type for Types.Array tag not handled*)
let get_locale_string =
  foreign "g_desktop_app_info_get_locale_string" (t_typ @-> string @-> returning (string_opt))
let get_nodisplay =
  foreign "g_desktop_app_info_get_nodisplay" (t_typ @-> returning (bool))
let get_show_in =
  foreign "g_desktop_app_info_get_show_in" (t_typ @-> string_opt @-> returning (bool))
let get_startup_wm_class =
  foreign "g_desktop_app_info_get_startup_wm_class" (t_typ @-> returning (string_opt))
let get_string =
  foreign "g_desktop_app_info_get_string" (t_typ @-> string @-> returning (string_opt))
let has_key =
  foreign "g_desktop_app_info_has_key" (t_typ @-> string @-> returning (bool))
let launch_action =
  foreign "g_desktop_app_info_launch_action" (t_typ @-> string @-> App_launch_context.t_typ @-> returning (void))
(*Not implemented g_desktop_app_info_launch_uris_as_manager type callback not implemented*)
(*Not implemented g_desktop_app_info_list_actions return type C Array type for Types.Array tag not handled*)
