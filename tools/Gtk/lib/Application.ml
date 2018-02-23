open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_application_new" (string_opt @-> Application_flags.t_list_view @-> returning (t_typ))
let add_accelerator =
  foreign "gtk_application_add_accelerator" (t_typ @-> string @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let add_window =
  foreign "gtk_application_add_window" (t_typ @-> Window.t_typ @-> returning (void))
(*Not implemented gtk_application_get_accels_for_action return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_actions_for_accel return type C Array type for Types.Array tag not handled*)
let get_active_window =
  foreign "gtk_application_get_active_window" (t_typ @-> returning (Window.t_typ))
let get_app_menu =
  foreign "gtk_application_get_app_menu" (t_typ @-> returning (Menu_model.t_typ))
let get_menu_by_id =
  foreign "gtk_application_get_menu_by_id" (t_typ @-> string @-> returning (Menu.t_typ))
let get_menubar =
  foreign "gtk_application_get_menubar" (t_typ @-> returning (Menu_model.t_typ))
let get_window_by_id =
  foreign "gtk_application_get_window_by_id" (t_typ @-> uint32_t @-> returning (Window.t_typ))
let get_windows =
  foreign "gtk_application_get_windows" (t_typ @-> returning (ptr List.t_typ))
let inhibit =
  foreign "gtk_application_inhibit" (t_typ @-> Window.t_typ @-> Application_inhibit_flags.t_list_view @-> string_opt @-> returning (uint32_t))
let is_inhibited =
  foreign "gtk_application_is_inhibited" (t_typ @-> Application_inhibit_flags.t_list_view @-> returning (bool))
(*Not implemented gtk_application_list_action_descriptions return type C Array type for Types.Array tag not handled*)
let prefers_app_menu =
  foreign "gtk_application_prefers_app_menu" (t_typ @-> returning (bool))
let remove_accelerator =
  foreign "gtk_application_remove_accelerator" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let remove_window =
  foreign "gtk_application_remove_window" (t_typ @-> Window.t_typ @-> returning (void))
(*Not implemented gtk_application_set_accels_for_action type C Array type for Types.Array tag not implemented*)
let set_app_menu =
  foreign "gtk_application_set_app_menu" (t_typ @-> Menu_model.t_typ @-> returning (void))
let set_menubar =
  foreign "gtk_application_set_menubar" (t_typ @-> Menu_model.t_typ @-> returning (void))
let uninhibit =
  foreign "gtk_application_uninhibit" (t_typ @-> uint32_t @-> returning (void))
