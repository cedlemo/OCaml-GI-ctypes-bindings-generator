open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_application_new return type object not handled*)
let add_accelerator =
  foreign "gtk_application_add_accelerator" (ptr t_typ @-> string @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
(*Not implemented gtk_application_add_window type object not implemented*)
(*Not implemented gtk_application_get_accels_for_action return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_actions_for_accel return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_active_window return type object not handled*)
(*Not implemented gtk_application_get_app_menu return type object not handled*)
(*Not implemented gtk_application_get_menu_by_id return type object not handled*)
(*Not implemented gtk_application_get_menubar return type object not handled*)
(*Not implemented gtk_application_get_window_by_id return type object not handled*)
let get_windows =
  foreign "gtk_application_get_windows" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_application_inhibit type object not implemented*)
let is_inhibited =
  foreign "gtk_application_is_inhibited" (ptr t_typ @-> Application_inhibit_flags.t_list_view @-> returning (bool))
(*Not implemented gtk_application_list_action_descriptions return type C Array type for Types.Array tag not handled*)
let prefers_app_menu =
  foreign "gtk_application_prefers_app_menu" (ptr t_typ @-> returning (bool))
let remove_accelerator =
  foreign "gtk_application_remove_accelerator" (ptr t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
(*Not implemented gtk_application_remove_window type object not implemented*)
(*Not implemented gtk_application_set_accels_for_action type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_application_set_app_menu type object not implemented*)
(*Not implemented gtk_application_set_menubar type object not implemented*)
let uninhibit =
  foreign "gtk_application_uninhibit" (ptr t_typ @-> uint32_t @-> returning (void))
