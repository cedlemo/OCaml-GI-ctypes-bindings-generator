open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val clear_status :
  t -> unit
val copy_into :
  t -> t -> unit
val dup :
  t -> t
val get_attribute_as_string :
  t -> string -> string option
val get_attribute_boolean :
  t -> string -> bool
val get_attribute_byte_string :
  t -> string -> string option
val get_attribute_data :
  t -> string -> (bool * File_attribute_type.t * unit ptr * File_attribute_status.t)
val get_attribute_int32 :
  t -> string -> int32
val get_attribute_int64 :
  t -> string -> int64
val get_attribute_object :
  t -> string -> Object.t
val get_attribute_status :
  t -> string -> File_attribute_status.t
val get_attribute_string :
  t -> string -> string option
(*Not implemented g_file_info_get_attribute_stringv return type C Array type for Types.Array tag not handled*)
val get_attribute_type :
  t -> string -> File_attribute_type.t
val get_attribute_uint32 :
  t -> string -> Unsigned.uint32
val get_attribute_uint64 :
  t -> string -> Unsigned.uint64
val get_content_type :
  t -> string option
val get_deletion_date :
  t -> Date_time.t structure ptr
val get_display_name :
  t -> string option
val get_edit_name :
  t -> string option
val get_etag :
  t -> string option
val get_file_type :
  t -> File_type.t
(*Not implemented g_file_info_get_icon return type interface not handled*)
val get_is_backup :
  t -> bool
val get_is_hidden :
  t -> bool
val get_is_symlink :
  t -> bool
val get_modification_time :
  t -> (Time_val.t structure)
val get_name :
  t -> string option
val get_size :
  t -> int64
val get_sort_order :
  t -> int32
(*Not implemented g_file_info_get_symbolic_icon return type interface not handled*)
val get_symlink_target :
  t -> string option
val has_attribute :
  t -> string -> bool
val has_namespace :
  t -> string -> bool
(*Not implemented g_file_info_list_attributes return type C Array type for Types.Array tag not handled*)
val remove_attribute :
  t -> string -> unit
val set_attribute :
  t -> string -> File_attribute_type.t -> unit ptr -> unit
val set_attribute_boolean :
  t -> string -> bool -> unit
val set_attribute_byte_string :
  t -> string -> string -> unit
val set_attribute_int32 :
  t -> string -> int32 -> unit
val set_attribute_int64 :
  t -> string -> int64 -> unit
val set_attribute_mask :
  t -> File_attribute_matcher.t structure ptr -> unit
val set_attribute_object :
  t -> string -> Object.t -> unit
val set_attribute_status :
  t -> string -> File_attribute_status.t -> bool
val set_attribute_string :
  t -> string -> string -> unit
(*Not implemented g_file_info_set_attribute_stringv type C Array type for Types.Array tag not implemented*)
val set_attribute_uint32 :
  t -> string -> Unsigned.uint32 -> unit
val set_attribute_uint64 :
  t -> string -> Unsigned.uint64 -> unit
val set_content_type :
  t -> string -> unit
val set_display_name :
  t -> string -> unit
val set_edit_name :
  t -> string -> unit
val set_file_type :
  t -> File_type.t -> unit
(*Not implemented g_file_info_set_icon type interface not implemented*)
val set_is_hidden :
  t -> bool -> unit
val set_is_symlink :
  t -> bool -> unit
val set_modification_time :
  t -> Time_val.t structure ptr -> unit
val set_name :
  t -> string -> unit
val set_size :
  t -> int64 -> unit
val set_sort_order :
  t -> int32 -> unit
(*Not implemented g_file_info_set_symbolic_icon type interface not implemented*)
val set_symlink_target :
  t -> string -> unit
val unset_attribute_mask :
  t -> unit
