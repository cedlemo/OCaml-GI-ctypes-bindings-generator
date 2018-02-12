open Ctypes

type t
val t_typ : t typ

(*Not implemented g_desktop_app_info_new return type object not handled*)
(*Not implemented g_desktop_app_info_new_from_filename return type object not handled*)
(*Not implemented g_desktop_app_info_new_from_keyfile return type object not handled*)
val get_implementations:
  string -> List.t structure ptr
(*Not implemented g_desktop_app_info_search return type C Array type for Types.Array tag not handled*)
val set_desktop_env:
  string -> unit
val get_action_name:
  t structure ptr -> string -> string option
val get_boolean:
  t structure ptr -> string -> bool
val get_categories:
  t structure ptr -> string option
val get_filename:
  t structure ptr -> string option
val get_generic_name:
  t structure ptr -> string option
val get_is_hidden:
  t structure ptr -> bool
(*Not implemented g_desktop_app_info_get_keywords return type C Array type for Types.Array tag not handled*)
val get_nodisplay:
  t structure ptr -> bool
val get_show_in:
  t structure ptr -> string option -> bool
val get_startup_wm_class:
  t structure ptr -> string option
val get_string:
  t structure ptr -> string -> string option
val has_key:
  t structure ptr -> string -> bool
(*Not implemented g_desktop_app_info_launch_action type object not implemented*)
(*Not implemented g_desktop_app_info_launch_uris_as_manager type object not implemented*)
(*Not implemented g_desktop_app_info_list_actions return type C Array type for Types.Array tag not handled*)
