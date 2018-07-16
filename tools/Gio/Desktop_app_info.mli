open Ctypes

type t
val t_typ : t typ

val create :
  string -> t
val create_from_filename :
  string -> t
val create_from_keyfile :
  Key_file.t structure ptr -> t
val get_implementations :
  string -> List.t structure (* t *) ptr
(*Not implemented g_desktop_app_info_search return type C Array type for Types.Array tag not handled*)
val set_desktop_env :
  string -> unit
val get_action_name :
  t -> string -> string option
val get_boolean :
  t -> string -> bool
val get_categories :
  t -> string option
val get_filename :
  t -> string option
val get_generic_name :
  t -> string option
val get_is_hidden :
  t -> bool
(*Not implemented g_desktop_app_info_get_keywords return type C Array type for Types.Array tag not handled*)
val get_locale_string :
  t -> string -> string option
val get_nodisplay :
  t -> bool
val get_show_in :
  t -> string option -> bool
val get_startup_wm_class :
  t -> string option
val get_string :
  t -> string -> string option
val has_key :
  t -> string -> bool
val launch_action :
  t -> string -> App_launch_context.t -> unit
(*Not implemented g_desktop_app_info_launch_uris_as_manager type callback not implemented*)
(*Not implemented g_desktop_app_info_list_actions return type C Array type for Types.Array tag not handled*)
