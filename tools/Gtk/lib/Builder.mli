open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_builder_new return type object not handled*)
(*Not implemented gtk_builder_new_from_file return type object not handled*)
(*Not implemented gtk_builder_new_from_resource return type object not handled*)
(*Not implemented gtk_builder_new_from_string return type object not handled*)
(*Not implemented gtk_builder_add_callback_symbol type callback not implemented*)
val add_from_file:
  t structure ptr -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_from_resource:
  t structure ptr -> string -> (Unsigned.uint32, Error.t structure ptr option) result
val add_from_string:
  t structure ptr -> string -> Unsigned.uint64 -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented gtk_builder_add_objects_from_file type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_resource type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_string type C Array type for Types.Array tag not implemented*)
val connect_signals:
  t structure ptr -> unit ptr option -> unit
(*Not implemented gtk_builder_connect_signals_full type callback not implemented*)
(*Not implemented gtk_builder_expose_object type object not implemented*)
(*Not implemented gtk_builder_extend_with_template type object not implemented*)
(*Not implemented gtk_builder_get_application return type object not handled*)
(*Not implemented gtk_builder_get_object return type object not handled*)
val get_objects:
  t structure ptr -> SList.t structure ptr
val get_translation_domain:
  t structure ptr -> string option
(*Not implemented gtk_builder_get_type_from_name return type gType not handled*)
(*Not implemented gtk_builder_set_application type object not implemented*)
val set_translation_domain:
  t structure ptr -> string option -> unit
(*Not implemented gtk_builder_value_from_string type object not implemented*)
(*Not implemented gtk_builder_value_from_string_type type gType not implemented*)
