open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_application_new return type object not handled*)
val add_accelerator:
  t structure ptr -> string -> string -> Variant.t structure ptr option -> unit
(*Not implemented gtk_application_add_window type object not implemented*)
(*Not implemented gtk_application_get_accels_for_action return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_actions_for_accel return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_active_window return type object not handled*)
(*Not implemented gtk_application_get_app_menu return type object not handled*)
(*Not implemented gtk_application_get_menu_by_id return type object not handled*)
(*Not implemented gtk_application_get_menubar return type object not handled*)
(*Not implemented gtk_application_get_window_by_id return type object not handled*)
val get_windows:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_application_inhibit type object not implemented*)
val is_inhibited:
  t structure ptr -> Application_inhibit_flags.t_list -> bool
(*Not implemented gtk_application_list_action_descriptions return type C Array type for Types.Array tag not handled*)
val prefers_app_menu:
  t structure ptr -> bool
val remove_accelerator:
  t structure ptr -> string -> Variant.t structure ptr option -> unit
(*Not implemented gtk_application_remove_window type object not implemented*)
(*Not implemented gtk_application_set_accels_for_action type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_application_set_app_menu type object not implemented*)
(*Not implemented gtk_application_set_menubar type object not implemented*)
val uninhibit:
  t structure ptr -> Unsigned.uint32 -> unit
