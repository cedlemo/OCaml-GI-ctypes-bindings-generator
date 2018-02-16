open Ctypes

type t
val t_typ : t typ

(*Not implemented g_settings_new return type object not handled*)
(*Not implemented g_settings_new_full type object not implemented*)
(*Not implemented g_settings_new_with_backend type object not implemented*)
(*Not implemented g_settings_new_with_backend_and_path type object not implemented*)
(*Not implemented g_settings_new_with_path return type object not handled*)
(*Not implemented g_settings_list_relocatable_schemas return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_schemas return type C Array type for Types.Array tag not handled*)
val sync:
  unit -> unit
(*Not implemented g_settings_unbind type object not implemented*)
val apply:
  t structure ptr -> unit
(*Not implemented g_settings_bind type object not implemented*)
(*Not implemented g_settings_bind_writable type object not implemented*)
(*Not implemented g_settings_create_action return type interface not handled*)
val delay:
  t structure ptr -> unit
val get_boolean:
  t structure ptr -> string -> bool
(*Not implemented g_settings_get_child return type object not handled*)
val get_default_value:
  t structure ptr -> string -> Variant.t structure ptr option
val get_double:
  t structure ptr -> string -> float
val get_enum:
  t structure ptr -> string -> int32
val get_flags:
  t structure ptr -> string -> Unsigned.uint32
val get_has_unapplied:
  t structure ptr -> bool
val get_int:
  t structure ptr -> string -> int32
val get_int64:
  t structure ptr -> string -> int64
(*Not implemented g_settings_get_mapped type callback not implemented*)
val get_range:
  t structure ptr -> string -> Variant.t structure ptr
val get_string:
  t structure ptr -> string -> string option
(*Not implemented g_settings_get_strv return type C Array type for Types.Array tag not handled*)
val get_uint:
  t structure ptr -> string -> Unsigned.uint32
val get_uint64:
  t structure ptr -> string -> Unsigned.uint64
val get_user_value:
  t structure ptr -> string -> Variant.t structure ptr option
val get_value:
  t structure ptr -> string -> Variant.t structure ptr
val is_writable:
  t structure ptr -> string -> bool
(*Not implemented g_settings_list_children return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_keys return type C Array type for Types.Array tag not handled*)
val range_check:
  t structure ptr -> string -> Variant.t structure ptr -> bool
val reset:
  t structure ptr -> string -> unit
val revert:
  t structure ptr -> unit
val set_boolean:
  t structure ptr -> string -> bool -> bool
val set_double:
  t structure ptr -> string -> float -> bool
val set_enum:
  t structure ptr -> string -> int32 -> bool
val set_flags:
  t structure ptr -> string -> Unsigned.uint32 -> bool
val set_int:
  t structure ptr -> string -> int32 -> bool
val set_int64:
  t structure ptr -> string -> int64 -> bool
val set_string:
  t structure ptr -> string -> string -> bool
(*Not implemented g_settings_set_strv type C Array type for Types.Array tag not implemented*)
val set_uint:
  t structure ptr -> string -> Unsigned.uint32 -> bool
val set_uint64:
  t structure ptr -> string -> Unsigned.uint64 -> bool
val set_value:
  t structure ptr -> string -> Variant.t structure ptr -> bool
