open Ctypes

type t
val t_typ : t typ

val create :
  string option -> Application_flags.t_list -> t ptr
val add_accelerator :
  t -> string -> string -> Variant.t structure ptr option -> unit
val add_window :
  t -> Window.t ptr -> unit
(*Not implemented gtk_application_get_accels_for_action return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_application_get_actions_for_accel return type C Array type for Types.Array tag not handled*)
val get_active_window :
  t -> Window.t ptr option
val get_app_menu :
  t -> Menu_model.t ptr option
val get_menu_by_id :
  t -> string -> Menu.t ptr
val get_menubar :
  t -> Menu_model.t ptr
val get_window_by_id :
  t -> Unsigned.uint32 -> Window.t ptr option
val get_windows :
  t -> List.t structure (* Not implemented : interface *) ptr
val inhibit :
  t -> Window.t ptr option -> Application_inhibit_flags.t_list -> string option -> Unsigned.uint32
val is_inhibited :
  t -> Application_inhibit_flags.t_list -> bool
(*Not implemented gtk_application_list_action_descriptions return type C Array type for Types.Array tag not handled*)
val prefers_app_menu :
  t -> bool
val remove_accelerator :
  t -> string -> Variant.t structure ptr option -> unit
val remove_window :
  t -> Window.t ptr -> unit
(*Not implemented gtk_application_set_accels_for_action type C Array type for Types.Array tag not implemented*)
val set_app_menu :
  t -> Menu_model.t ptr option -> unit
val set_menubar :
  t -> Menu_model.t ptr option -> unit
val uninhibit :
  t -> Unsigned.uint32 -> unit
