open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get_default :
  unit -> t ptr
val get_named :
  string -> string option -> t ptr
(*Not implemented gtk_css_provider_load_from_data type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_css_provider_load_from_file type interface not implemented*)
val load_from_path :
  t -> string -> (bool, Error.t structure ptr option) result
val load_from_resource :
  t -> string -> unit
val to_string :
  t -> string option
