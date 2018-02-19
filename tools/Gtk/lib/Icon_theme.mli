open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_icon_theme_new return type object not handled*)
(*Not implemented gtk_icon_theme_add_builtin_icon type object not implemented*)
(*Not implemented gtk_icon_theme_get_default return type object not handled*)
(*Not implemented gtk_icon_theme_get_for_screen type object not implemented*)
val add_resource_path:
  t structure ptr -> string -> unit
val append_search_path:
  t structure ptr -> string -> unit
(*Not implemented gtk_icon_theme_choose_icon type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_theme_choose_icon_for_scale type C Array type for Types.Array tag not implemented*)
val get_example_icon_name:
  t structure ptr -> string option
(*Not implemented gtk_icon_theme_get_icon_sizes return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_icon_theme_get_search_path type C Array type for Types.Array tag not implemented*)
val has_icon:
  t structure ptr -> string -> bool
val list_contexts:
  t structure ptr -> List.t structure ptr
val list_icons:
  t structure ptr -> string option -> List.t structure ptr
(*Not implemented gtk_icon_theme_load_icon return type object not handled*)
(*Not implemented gtk_icon_theme_load_icon_for_scale return type object not handled*)
(*Not implemented gtk_icon_theme_load_surface type object not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon_for_scale type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_icon return type object not handled*)
(*Not implemented gtk_icon_theme_lookup_icon_for_scale return type object not handled*)
val prepend_search_path:
  t structure ptr -> string -> unit
val rescan_if_needed:
  t structure ptr -> bool
val set_custom_theme:
  t structure ptr -> string option -> unit
(*Not implemented gtk_icon_theme_set_screen type object not implemented*)
(*Not implemented gtk_icon_theme_set_search_path type C Array type for Types.Array tag not implemented*)
