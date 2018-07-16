open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val create_from_file :
  string -> t
val create_from_resource :
  string -> t
val create_from_string :
  string -> int64 -> t
(*Not implemented gtk_builder_add_callback_symbol type callback not implemented*)
val add_from_file :
  t -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_from_resource :
  t -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_from_string :
  t -> string -> Unsigned.uint64 -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented gtk_builder_add_objects_from_file type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_resource type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_string type C Array type for Types.Array tag not implemented*)
val connect_signals :
  t -> unit ptr option -> unit
(*Not implemented gtk_builder_connect_signals_full type callback not implemented*)
val expose_object :
  t -> string -> Object.t -> unit
(*Not implemented gtk_builder_extend_with_template type gType not implemented*)
val get_application :
  t -> Application.t
val get_object :
  t -> string -> Object.t
val get_objects :
  t -> SList.t structure (* Object.t *) ptr
val get_translation_domain :
  t -> string option
(*Not implemented gtk_builder_get_type_from_name return type gType not handled*)
val set_application :
  t -> Application.t -> unit
val set_translation_domain :
  t -> string option -> unit
val value_from_string :
  t -> Param_spec.t -> string -> (bool * Value.t structure, Error.t structure ptr option) result
(*Not implemented gtk_builder_value_from_string_type type gType not implemented*)
