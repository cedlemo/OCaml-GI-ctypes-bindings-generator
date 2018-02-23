open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_default =
  foreign "gtk_settings_get_default" (void @-> returning (t_typ))
let get_for_screen =
  foreign "gtk_settings_get_for_screen" (Screen.t_typ @-> returning (t_typ))
let install_property =
  foreign "gtk_settings_install_property" (Param_spec.t_typ @-> returning (void))
(*Not implemented gtk_settings_install_property_parser type callback not implemented*)
let reset_property =
  foreign "gtk_settings_reset_property" (t_typ @-> string @-> returning (void))
let set_double_property =
  foreign "gtk_settings_set_double_property" (t_typ @-> string @-> double @-> string @-> returning (void))
let set_long_property =
  foreign "gtk_settings_set_long_property" (t_typ @-> string @-> int64_t @-> string @-> returning (void))
let set_property_value =
  foreign "gtk_settings_set_property_value" (t_typ @-> string @-> ptr Settings_value.t_typ @-> returning (void))
let set_string_property =
  foreign "gtk_settings_set_string_property" (t_typ @-> string @-> string @-> string @-> returning (void))
