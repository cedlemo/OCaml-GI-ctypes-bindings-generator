open Ctypes

type t
val t_typ : t structure typ

val create_from_directory :
  string -> t structure ptr option -> bool -> (t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_settings_schema_source_list_schemas type C Array type for Types.Array tag not implemented*)
val lookup :
  t structure ptr -> string -> bool -> Settings_schema.t structure ptr option
val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
val get_default :
  unit -> t structure ptr option
