open Ctypes

type t
val t_typ : t typ

(*Not implemented g_application_new return type object not handled*)
(*Not implemented g_application_get_default return type object not handled*)
val id_is_valid:
  string -> bool
val activate:
  t structure ptr -> unit
val add_main_option:
  t structure ptr -> string -> int -> Option_flags.t_list -> Option_arg.t -> string -> string option -> unit
(*Not implemented g_application_add_main_option_entries type C Array type for Types.Array tag not implemented*)
val add_option_group:
  t structure ptr -> Option_group.t structure ptr -> unit
(*Not implemented g_application_bind_busy_property type object not implemented*)
val get_application_id:
  t structure ptr -> string option
(*Not implemented g_application_get_dbus_connection return type object not handled*)
val get_dbus_object_path:
  t structure ptr -> string option
val get_flags:
  t structure ptr -> Application_flags.t_list
val get_inactivity_timeout:
  t structure ptr -> Unsigned.uint32
val get_is_busy:
  t structure ptr -> bool
val get_is_registered:
  t structure ptr -> bool
val get_is_remote:
  t structure ptr -> bool
val get_resource_base_path:
  t structure ptr -> string option
val hold:
  t structure ptr -> unit
val mark_busy:
  t structure ptr -> unit
(*Not implemented g_application_open type C Array type for Types.Array tag not implemented*)
val quit:
  t structure ptr -> unit
(*Not implemented g_application_register type object not implemented*)
val release:
  t structure ptr -> unit
(*Not implemented g_application_run type C Array type for Types.Array tag not implemented*)
(*Not implemented g_application_send_notification type object not implemented*)
(*Not implemented g_application_set_action_group type interface not implemented*)
val set_application_id:
  t structure ptr -> string option -> unit
val set_default:
  t structure ptr -> unit
val set_flags:
  t structure ptr -> Application_flags.t_list -> unit
val set_inactivity_timeout:
  t structure ptr -> Unsigned.uint32 -> unit
val set_resource_base_path:
  t structure ptr -> string option -> unit
(*Not implemented g_application_unbind_busy_property type object not implemented*)
val unmark_busy:
  t structure ptr -> unit
val withdraw_notification:
  t structure ptr -> string -> unit
