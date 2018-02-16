open Ctypes

type t
val t_typ : t typ

(*Not implemented g_file_info_new return type object not handled*)
val clear_status:
  t structure ptr -> unit
(*Not implemented g_file_info_copy_into type object not implemented*)
(*Not implemented g_file_info_dup return type object not handled*)
val get_attribute_as_string:
  t structure ptr -> string -> string option
val get_attribute_boolean:
  t structure ptr -> string -> bool
val get_attribute_byte_string:
  t structure ptr -> string -> string option
val get_attribute_data :
  t structure ptr -> string -> (bool * File_attribute_type.t * unit ptr * File_attribute_status.t)
val get_attribute_int32:
  t structure ptr -> string -> int32
val get_attribute_int64:
  t structure ptr -> string -> int64
(*Not implemented g_file_info_get_attribute_object return type object not handled*)
val get_attribute_status:
  t structure ptr -> string -> File_attribute_status.t
val get_attribute_string:
  t structure ptr -> string -> string option
(*Not implemented g_file_info_get_attribute_stringv return type C Array type for Types.Array tag not handled*)
val get_attribute_type:
  t structure ptr -> string -> File_attribute_type.t
val get_attribute_uint32:
  t structure ptr -> string -> Unsigned.uint32
val get_attribute_uint64:
  t structure ptr -> string -> Unsigned.uint64
val get_content_type:
  t structure ptr -> string option
val get_deletion_date:
  t structure ptr -> Date_time.t structure ptr
val get_display_name:
  t structure ptr -> string option
val get_edit_name:
  t structure ptr -> string option
val get_etag:
  t structure ptr -> string option
val get_file_type:
  t structure ptr -> File_type.t
(*Not implemented g_file_info_get_icon return type interface not handled*)
val get_is_backup:
  t structure ptr -> bool
val get_is_hidden:
  t structure ptr -> bool
val get_is_symlink:
  t structure ptr -> bool
val get_modification_time :
  t structure ptr -> (Time_val.t structure)
val get_name:
  t structure ptr -> string option
val get_size:
  t structure ptr -> int64
val get_sort_order:
  t structure ptr -> int32
(*Not implemented g_file_info_get_symbolic_icon return type interface not handled*)
val get_symlink_target:
  t structure ptr -> string option
val has_attribute:
  t structure ptr -> string -> bool
val has_namespace:
  t structure ptr -> string -> bool
(*Not implemented g_file_info_list_attributes return type C Array type for Types.Array tag not handled*)
val remove_attribute:
  t structure ptr -> string -> unit
val set_attribute:
  t structure ptr -> string -> File_attribute_type.t -> unit ptr -> unit
val set_attribute_boolean:
  t structure ptr -> string -> bool -> unit
val set_attribute_byte_string:
  t structure ptr -> string -> string -> unit
val set_attribute_int32:
  t structure ptr -> string -> int32 -> unit
val set_attribute_int64:
  t structure ptr -> string -> int64 -> unit
val set_attribute_mask:
  t structure ptr -> File_attribute_matcher.t structure ptr -> unit
(*Not implemented g_file_info_set_attribute_object type object not implemented*)
val set_attribute_status:
  t structure ptr -> string -> File_attribute_status.t -> bool
val set_attribute_string:
  t structure ptr -> string -> string -> unit
(*Not implemented g_file_info_set_attribute_stringv type C Array type for Types.Array tag not implemented*)
val set_attribute_uint32:
  t structure ptr -> string -> Unsigned.uint32 -> unit
val set_attribute_uint64:
  t structure ptr -> string -> Unsigned.uint64 -> unit
val set_content_type:
  t structure ptr -> string -> unit
val set_display_name:
  t structure ptr -> string -> unit
val set_edit_name:
  t structure ptr -> string -> unit
val set_file_type:
  t structure ptr -> File_type.t -> unit
(*Not implemented g_file_info_set_icon type interface not implemented*)
val set_is_hidden:
  t structure ptr -> bool -> unit
val set_is_symlink:
  t structure ptr -> bool -> unit
val set_modification_time:
  t structure ptr -> Time_val.t structure ptr -> unit
val set_name:
  t structure ptr -> string -> unit
val set_size:
  t structure ptr -> int64 -> unit
val set_sort_order:
  t structure ptr -> int32 -> unit
(*Not implemented g_file_info_set_symbolic_icon type interface not implemented*)
val set_symlink_target:
  t structure ptr -> string -> unit
val unset_attribute_mask:
  t structure ptr -> unit
