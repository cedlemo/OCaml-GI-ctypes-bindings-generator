open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_settings_get_default return type object not handled*)
(*Not implemented gtk_settings_get_for_screen type object not implemented*)
(*Not implemented gtk_settings_install_property type object not implemented*)
(*Not implemented gtk_settings_install_property_parser type object not implemented*)
val reset_property:
  t structure ptr -> string -> unit
val set_double_property:
  t structure ptr -> string -> float -> string -> unit
val set_long_property:
  t structure ptr -> string -> int64 -> string -> unit
val set_property_value:
  t structure ptr -> string -> Settings_value.t structure ptr -> unit
val set_string_property:
  t structure ptr -> string -> string -> string -> unit
