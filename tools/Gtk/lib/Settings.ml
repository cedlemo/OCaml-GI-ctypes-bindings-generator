open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_settings_get_default return type object not handled*)
(*Not implemented gtk_settings_get_for_screen type object not implemented*)
(*Not implemented gtk_settings_install_property type object not implemented*)
(*Not implemented gtk_settings_install_property_parser type object not implemented*)
let reset_property =
  foreign "gtk_settings_reset_property" (ptr t_typ @-> string @-> returning (void))
let set_double_property =
  foreign "gtk_settings_set_double_property" (ptr t_typ @-> string @-> double @-> string @-> returning (void))
let set_long_property =
  foreign "gtk_settings_set_long_property" (ptr t_typ @-> string @-> int64_t @-> string @-> returning (void))
let set_property_value =
  foreign "gtk_settings_set_property_value" (ptr t_typ @-> string @-> ptr Settings_value.t_typ @-> returning (void))
let set_string_property =
  foreign "gtk_settings_set_string_property" (ptr t_typ @-> string @-> string @-> string @-> returning (void))
