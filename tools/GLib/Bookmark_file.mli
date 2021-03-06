open Ctypes

type t
val t_typ : t structure typ

val add_application :
  t structure ptr -> string -> string option -> string option -> unit
val add_group :
  t structure ptr -> string -> string -> unit
val free :
  t structure ptr -> unit
val get_added :
  t structure ptr -> string -> (int64, Error.t structure ptr option) result
val get_app_info :
  t structure ptr -> string -> string -> (bool * string * Unsigned.uint32 * int64, Error.t structure ptr option) result
(*Not implemented g_bookmark_file_get_applications return type C Array type for Types.Array tag not handled*)
val get_description :
  t structure ptr -> string -> (string option, Error.t structure ptr option) result
(*Not implemented g_bookmark_file_get_groups return type C Array type for Types.Array tag not handled*)
val get_icon :
  t structure ptr -> string -> (bool * string * string, Error.t structure ptr option) result
val get_is_private :
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val get_mime_type :
  t structure ptr -> string -> (string option, Error.t structure ptr option) result
val get_modified :
  t structure ptr -> string -> (int64, Error.t structure ptr option) result
val get_size :
  t structure ptr -> int32
val get_title :
  t structure ptr -> string option -> (string option, Error.t structure ptr option) result
(*Not implemented g_bookmark_file_get_uris return type C Array type for Types.Array tag not handled*)
val get_visited :
  t structure ptr -> string -> (int64, Error.t structure ptr option) result
val has_application :
  t structure ptr -> string -> string -> (bool, Error.t structure ptr option) result
val has_group :
  t structure ptr -> string -> string -> (bool, Error.t structure ptr option) result
val has_item :
  t structure ptr -> string -> bool
(*Not implemented g_bookmark_file_load_from_data type C Array type for Types.Array tag not implemented*)
val load_from_data_dirs :
  t structure ptr -> string -> (bool * string, Error.t structure ptr option) result
val load_from_file :
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val move_item :
  t structure ptr -> string -> string option -> (bool, Error.t structure ptr option) result
val remove_application :
  t structure ptr -> string -> string -> (bool, Error.t structure ptr option) result
val remove_group :
  t structure ptr -> string -> string -> (bool, Error.t structure ptr option) result
val remove_item :
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val set_added :
  t structure ptr -> string -> int64 -> unit
val set_app_info :
  t structure ptr -> string -> string -> string -> int32 -> int64 -> (bool, Error.t structure ptr option) result
val set_description :
  t structure ptr -> string option -> string -> unit
(*Not implemented g_bookmark_file_set_groups type C Array type for Types.Array tag not implemented*)
val set_icon :
  t structure ptr -> string -> string option -> string -> unit
val set_is_private :
  t structure ptr -> string -> bool -> unit
val set_mime_type :
  t structure ptr -> string -> string -> unit
val set_modified :
  t structure ptr -> string -> int64 -> unit
val set_title :
  t structure ptr -> string option -> string -> unit
val set_visited :
  t structure ptr -> string -> int64 -> unit
(*Not implemented g_bookmark_file_to_data return type C Array type for Types.Array tag not handled*)
val to_file :
  t structure ptr -> string -> (bool, Error.t structure ptr option) result
val error_quark :
  unit -> Unsigned.uint32
