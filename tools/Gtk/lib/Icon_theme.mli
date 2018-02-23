open Ctypes

type t
val t_typ : t typ

val create:
  unit -> t
val add_builtin_icon:
  string -> int32 -> Pixbuf.t -> unit
val get_default:
  unit -> t
val get_for_screen:
  Screen.t -> t
val add_resource_path:
  t -> string -> unit
val append_search_path:
  t -> string -> unit
(*Not implemented gtk_icon_theme_choose_icon type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_theme_choose_icon_for_scale type C Array type for Types.Array tag not implemented*)
val get_example_icon_name:
  t -> string option
(*Not implemented gtk_icon_theme_get_icon_sizes return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_icon_theme_get_search_path type C Array type for Types.Array tag not implemented*)
val has_icon:
  t -> string -> bool
val list_contexts:
  t -> List.t structure ptr
val list_icons:
  t -> string option -> List.t structure ptr
val load_icon:
  t -> string -> int32 -> Icon_lookup_flags.t_list -> (Pixbuf.t, Error.t structure ptr option) result
val load_icon_for_scale:
  t -> string -> int32 -> int32 -> Icon_lookup_flags.t_list -> (Pixbuf.t, Error.t structure ptr option) result
val load_surface:
  t -> string -> int32 -> int32 -> Window.t -> Icon_lookup_flags.t_list -> (Surface.t structure ptr option, Error.t structure ptr option) result
(*Not implemented gtk_icon_theme_lookup_by_gicon type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon_for_scale type interface not implemented*)
val lookup_icon:
  t -> string -> int32 -> Icon_lookup_flags.t_list -> Icon_info.t
val lookup_icon_for_scale:
  t -> string -> int32 -> int32 -> Icon_lookup_flags.t_list -> Icon_info.t
val prepend_search_path:
  t -> string -> unit
val rescan_if_needed:
  t -> bool
val set_custom_theme:
  t -> string option -> unit
val set_screen:
  t -> Screen.t -> unit
(*Not implemented gtk_icon_theme_set_search_path type C Array type for Types.Array tag not implemented*)
