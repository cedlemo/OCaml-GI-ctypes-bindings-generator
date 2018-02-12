open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_application_new return type object not handled*)
(*Not implemented g_application_get_default return type object not handled*)
let id_is_valid =
  foreign "g_application_id_is_valid" (string @-> returning (bool))
let activate =
  foreign "g_application_activate" (ptr t_typ @-> returning (void))
let add_main_option =
  foreign "g_application_add_main_option" (ptr t_typ @-> string @-> int8_t @-> Option_flags.t_list_view @-> Option_arg.t_view @-> string @-> string_opt @-> returning (void))
(*Not implemented g_application_add_main_option_entries type C Array type for Types.Array tag not implemented*)
let add_option_group =
  foreign "g_application_add_option_group" (ptr t_typ @-> ptr Option_group.t_typ @-> returning (void))
(*Not implemented g_application_bind_busy_property type object not implemented*)
let get_application_id =
  foreign "g_application_get_application_id" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_application_get_dbus_connection return type object not handled*)
let get_dbus_object_path =
  foreign "g_application_get_dbus_object_path" (ptr t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_application_get_flags" (ptr t_typ @-> returning (Application_flags.t_list_view))
let get_inactivity_timeout =
  foreign "g_application_get_inactivity_timeout" (ptr t_typ @-> returning (uint32_t))
let get_is_busy =
  foreign "g_application_get_is_busy" (ptr t_typ @-> returning (bool))
let get_is_registered =
  foreign "g_application_get_is_registered" (ptr t_typ @-> returning (bool))
let get_is_remote =
  foreign "g_application_get_is_remote" (ptr t_typ @-> returning (bool))
let get_resource_base_path =
  foreign "g_application_get_resource_base_path" (ptr t_typ @-> returning (string_opt))
let hold =
  foreign "g_application_hold" (ptr t_typ @-> returning (void))
let mark_busy =
  foreign "g_application_mark_busy" (ptr t_typ @-> returning (void))
(*Not implemented g_application_open type C Array type for Types.Array tag not implemented*)
let quit =
  foreign "g_application_quit" (ptr t_typ @-> returning (void))
(*Not implemented g_application_register type object not implemented*)
let release =
  foreign "g_application_release" (ptr t_typ @-> returning (void))
(*Not implemented g_application_run type C Array type for Types.Array tag not implemented*)
(*Not implemented g_application_send_notification type object not implemented*)
(*Not implemented g_application_set_action_group type interface not implemented*)
let set_application_id =
  foreign "g_application_set_application_id" (ptr t_typ @-> string_opt @-> returning (void))
let set_default =
  foreign "g_application_set_default" (ptr t_typ @-> returning (void))
let set_flags =
  foreign "g_application_set_flags" (ptr t_typ @-> Application_flags.t_list_view @-> returning (void))
let set_inactivity_timeout =
  foreign "g_application_set_inactivity_timeout" (ptr t_typ @-> uint32_t @-> returning (void))
let set_resource_base_path =
  foreign "g_application_set_resource_base_path" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented g_application_unbind_busy_property type object not implemented*)
let unmark_busy =
  foreign "g_application_unmark_busy" (ptr t_typ @-> returning (void))
let withdraw_notification =
  foreign "g_application_withdraw_notification" (ptr t_typ @-> string @-> returning (void))
