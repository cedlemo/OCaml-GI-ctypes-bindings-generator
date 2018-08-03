open Ctypes

type t
val t_typ : t typ

val create :
  string -> t ptr
val create_full :
  Settings_schema.t structure ptr -> Settings_backend.t ptr option -> string option -> t ptr
val create_with_backend :
  string -> Settings_backend.t ptr -> t ptr
val create_with_backend_and_path :
  string -> Settings_backend.t ptr -> string -> t ptr
val create_with_path :
  string -> string -> t ptr
(*Not implemented g_settings_list_relocatable_schemas return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_schemas return type C Array type for Types.Array tag not handled*)
val sync :
  unit -> unit
val unbind :
  Object.t ptr -> string -> unit
val apply :
  t -> unit
val bind :
  t -> string -> Object.t ptr -> string -> Settings_bind_flags.t_list -> unit
val bind_writable :
  t -> string -> Object.t ptr -> string -> bool -> unit
(*Not implemented g_settings_create_action return type interface not handled*)
val delay :
  t -> unit
val get_boolean :
  t -> string -> bool
val get_child :
  t -> string -> t ptr
val get_default_value :
  t -> string -> Variant.t structure ptr option
val get_double :
  t -> string -> float
val get_enum :
  t -> string -> int32
val get_flags :
  t -> string -> Unsigned.uint32
val get_has_unapplied :
  t -> bool
val get_int :
  t -> string -> int32
val get_int64 :
  t -> string -> int64
(*Not implemented g_settings_get_mapped type callback not implemented*)
val get_range :
  t -> string -> Variant.t structure ptr
val get_string :
  t -> string -> string option
(*Not implemented g_settings_get_strv return type C Array type for Types.Array tag not handled*)
val get_uint :
  t -> string -> Unsigned.uint32
val get_uint64 :
  t -> string -> Unsigned.uint64
val get_user_value :
  t -> string -> Variant.t structure ptr option
val get_value :
  t -> string -> Variant.t structure ptr
val is_writable :
  t -> string -> bool
(*Not implemented g_settings_list_children return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_keys return type C Array type for Types.Array tag not handled*)
val range_check :
  t -> string -> Variant.t structure ptr -> bool
val reset :
  t -> string -> unit
val revert :
  t -> unit
val set_boolean :
  t -> string -> bool -> bool
val set_double :
  t -> string -> float -> bool
val set_enum :
  t -> string -> int32 -> bool
val set_flags :
  t -> string -> Unsigned.uint32 -> bool
val set_int :
  t -> string -> int32 -> bool
val set_int64 :
  t -> string -> int64 -> bool
val set_string :
  t -> string -> string -> bool
(*Not implemented g_settings_set_strv type C Array type for Types.Array tag not implemented*)
val set_uint :
  t -> string -> Unsigned.uint32 -> bool
val set_uint64 :
  t -> string -> Unsigned.uint64 -> bool
val set_value :
  t -> string -> Variant.t structure ptr -> bool
