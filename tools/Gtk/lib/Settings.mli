open Ctypes

type t
val t_typ : t typ

val get_default:
  unit -> t
val get_for_screen:
  Screen.t -> t
val install_property:
  Param_spec.t -> unit
(*Not implemented gtk_settings_install_property_parser type callback not implemented*)
val reset_property:
  t -> string -> unit
val set_double_property:
  t -> string -> float -> string -> unit
val set_long_property:
  t -> string -> int64 -> string -> unit
val set_property_value:
  t -> string -> Settings_value.t structure ptr -> unit
val set_string_property:
  t -> string -> string -> string -> unit
