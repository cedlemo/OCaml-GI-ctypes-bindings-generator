open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_css_provider_new return type object not handled*)
(*Not implemented gtk_css_provider_get_default return type object not handled*)
(*Not implemented gtk_css_provider_get_named return type object not handled*)
(*Not implemented gtk_css_provider_load_from_data type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_css_provider_load_from_file type interface not implemented*)
val load_from_path:
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val load_from_resource:
  t structure ptr -> string -> unit
val to_string:
  t structure ptr -> string option
