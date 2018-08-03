open Ctypes

val c_PARAM_MASK : int32
val c_PARAM_STATIC_STRINGS : int32
val c_PARAM_USER_SHIFT : int32
(*DEPRECATED : Parameter*)
val c_SIGNAL_FLAGS_MASK : int32
val c_SIGNAL_MATCH_MASK : int32
val c_TYPE_FLAG_RESERVED_ID_BIT : Unsigned.uint64
val c_TYPE_FUNDAMENTAL_MAX : int32
val c_TYPE_FUNDAMENTAL_SHIFT : int32
val c_TYPE_RESERVED_BSE_FIRST : int32
val c_TYPE_RESERVED_BSE_LAST : int32
val c_TYPE_RESERVED_GLIB_FIRST : int32
val c_TYPE_RESERVED_GLIB_LAST : int32
val c_TYPE_RESERVED_USER_FIRST : int32
(*DEPRECATED : TypeDebugFlags*)
val c_VALUE_COLLECT_FORMAT_MAX_LENGTH : int32
val c_VALUE_NOCOPY_CONTENTS : int32
(*DEPRECATED : type_init*)
(*DEPRECATED : type_init_with_debug_flags*)
(*Not implemented g_value_type_transformable type gType not implemented*)

(*Not implemented g_value_type_compatible type gType not implemented*)

(*Not implemented g_type_test_flags type gType not implemented*)

(*Not implemented g_type_set_qdata type gType not implemented*)

(*Not implemented g_type_register_static type gType not implemented*)

(*Not implemented g_type_register_fundamental type gType not implemented*)

(*Not implemented g_type_register_dynamic type gType not implemented*)

(*Not implemented g_type_query type gType not implemented*)

(*Not implemented g_type_qname type gType not implemented*)

(*Not implemented g_type_parent type gType not implemented*)

(*Not implemented g_type_next_base type gType not implemented*)

val type_name_from_instance :
  Type_instance.t structure ptr -> string option

val type_name_from_class :
  Type_class.t structure ptr -> string option

(*Not implemented g_type_name type gType not implemented*)

(*Not implemented g_type_is_a type gType not implemented*)

(*Not implemented g_type_interfaces type gType not implemented*)

(*Not implemented g_type_interface_prerequisites type gType not implemented*)

(*Not implemented g_type_interface_peek type gType not implemented*)

(*Not implemented g_type_interface_get_plugin type gType not implemented*)

(*Not implemented g_type_interface_add_prerequisite type gType not implemented*)

val type_get_type_registration_serial :
  unit -> Unsigned.uint32

(*Not implemented g_type_get_qdata type gType not implemented*)

(*Not implemented g_type_get_plugin type gType not implemented*)

(*Not implemented g_type_get_instance_count type gType not implemented*)

(*Not implemented g_type_fundamental_next return type gType not handled*)

(*Not implemented g_type_fundamental type gType not implemented*)

(*Not implemented g_type_from_name return type gType not handled*)

val type_free_instance :
  Type_instance.t structure ptr -> unit

(*Not implemented g_type_ensure type gType not implemented*)

(*Not implemented g_type_depth type gType not implemented*)

val type_default_interface_unref :
  Type_interface.t structure ptr -> unit

(*Not implemented g_type_default_interface_ref type gType not implemented*)

(*Not implemented g_type_default_interface_peek type gType not implemented*)

(*Not implemented g_type_class_ref type gType not implemented*)

(*Not implemented g_type_class_peek_static type gType not implemented*)

(*Not implemented g_type_class_peek type gType not implemented*)

val type_class_adjust_private_offset :
  unit ptr option -> int32 ptr -> unit

(*Not implemented g_type_children type gType not implemented*)

(*Not implemented g_type_check_value_holds type gType not implemented*)

val type_check_value :
  Value.t structure ptr -> bool

(*Not implemented g_type_check_is_value_type type gType not implemented*)

(*Not implemented g_type_check_instance_is_fundamentally_a type gType not implemented*)

(*Not implemented g_type_check_instance_is_a type gType not implemented*)

val type_check_instance :
  Type_instance.t structure ptr -> bool

(*Not implemented g_type_check_class_is_a type gType not implemented*)

(*Not implemented g_type_add_interface_static type gType not implemented*)

(*Not implemented g_type_add_interface_dynamic type gType not implemented*)

(*Not implemented g_type_add_instance_private type gType not implemented*)

(*Not implemented g_type_add_class_private type gType not implemented*)

val strdup_value_contents :
  Value.t structure ptr -> string option

val source_set_dummy_callback :
  Source.t structure ptr -> unit

val source_set_closure :
  Source.t structure ptr -> Closure.t structure ptr -> unit

(*Not implemented g_signal_type_cclosure_new type gType not implemented*)

val signal_stop_emission_by_name :
  Object.t ptr -> string -> unit

val signal_stop_emission :
  Object.t ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit

(*Not implemented g_signal_set_va_marshaller type gType not implemented*)

val signal_remove_emission_hook :
  Unsigned.uint32 -> Unsigned.uint64 -> unit

val signal_query :
  Unsigned.uint32 -> (Signal_query.t structure)

(*Not implemented g_signal_parse_name type gType not implemented*)

(*Not implemented g_signal_override_class_closure type gType not implemented*)

val signal_name :
  Unsigned.uint32 -> string option

(*Not implemented g_signal_lookup type gType not implemented*)

(*Not implemented g_signal_list_ids type gType not implemented*)

val signal_has_handler_pending :
  Object.t ptr -> Unsigned.uint32 -> Unsigned.uint32 -> bool -> bool

val signal_handlers_unblock_matched :
  Object.t ptr -> Signal_match_type.t_list -> Unsigned.uint32 -> Unsigned.uint32 -> Closure.t structure ptr option -> unit ptr option -> unit ptr option -> Unsigned.uint32

val signal_handlers_disconnect_matched :
  Object.t ptr -> Signal_match_type.t_list -> Unsigned.uint32 -> Unsigned.uint32 -> Closure.t structure ptr option -> unit ptr option -> unit ptr option -> Unsigned.uint32

val signal_handlers_destroy :
  Object.t ptr -> unit

val signal_handlers_block_matched :
  Object.t ptr -> Signal_match_type.t_list -> Unsigned.uint32 -> Unsigned.uint32 -> Closure.t structure ptr option -> unit ptr option -> unit ptr option -> Unsigned.uint32

val signal_handler_unblock :
  Object.t ptr -> Unsigned.uint64 -> unit

val signal_handler_is_connected :
  Object.t ptr -> Unsigned.uint64 -> bool

val signal_handler_find :
  Object.t ptr -> Signal_match_type.t_list -> Unsigned.uint32 -> Unsigned.uint32 -> Closure.t structure ptr option -> unit ptr option -> unit ptr option -> Unsigned.uint64

val signal_handler_disconnect :
  Object.t ptr -> Unsigned.uint64 -> unit

val signal_handler_block :
  Object.t ptr -> Unsigned.uint64 -> unit

val signal_get_invocation_hint :
  Object.t ptr -> Signal_invocation_hint.t structure ptr

(*Not implemented g_signal_emitv type C Array type for Types.Array tag not implemented*)

val signal_connect_closure_by_id :
  Object.t ptr -> Unsigned.uint32 -> Unsigned.uint32 -> Closure.t structure ptr -> bool -> Unsigned.uint64

val signal_connect_closure :
  Object.t ptr -> string -> Closure.t structure ptr -> bool -> Unsigned.uint64

(*Not implemented g_signal_chain_from_overridden type C Array type for Types.Array tag not implemented*)

(*Not implemented g_signal_add_emission_hook type callback not implemented*)

val signal_accumulator_true_handled :
  Signal_invocation_hint.t structure ptr -> Value.t structure ptr -> Value.t structure ptr -> unit ptr option -> bool

val signal_accumulator_first_wins :
  Signal_invocation_hint.t structure ptr -> Value.t structure ptr -> Value.t structure ptr -> unit ptr option -> bool

(*Not implemented g_pointer_type_register_static return type gType not handled*)

val param_values_cmp :
  Param_spec.t ptr -> Value.t structure ptr -> Value.t structure ptr -> int32

val param_value_validate :
  Param_spec.t ptr -> Value.t structure ptr -> bool

val param_value_set_default :
  Param_spec.t ptr -> Value.t structure ptr -> unit

val param_value_defaults :
  Param_spec.t ptr -> Value.t structure ptr -> bool

val param_value_convert :
  Param_spec.t ptr -> Value.t structure ptr -> Value.t structure ptr -> bool -> bool

(*Not implemented g_param_type_register_static return type gType not handled*)

val param_spec_variant :
  string -> string -> string -> Variant_type.t structure ptr -> Variant.t structure ptr option -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_param_spec_unichar type unichar not implemented*)

val param_spec_ulong :
  string -> string -> string -> Unsigned.uint64 -> Unsigned.uint64 -> Unsigned.uint64 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_uint64 :
  string -> string -> string -> Unsigned.uint64 -> Unsigned.uint64 -> Unsigned.uint64 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_uint :
  string -> string -> string -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_uchar :
  string -> string -> string -> Unsigned.uint8 -> Unsigned.uint8 -> Unsigned.uint8 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_string :
  string -> string -> string -> string option -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_pool_create :
  bool -> Param_spec_pool.t structure ptr

val param_spec_pointer :
  string -> string -> string -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_param_spec_param type gType not implemented*)

(*Not implemented g_param_spec_object type gType not implemented*)

val param_spec_long :
  string -> string -> string -> int64 -> int64 -> int64 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_int64 :
  string -> string -> string -> int64 -> int64 -> int64 -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_int :
  string -> string -> string -> int32 -> int32 -> int32 -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_param_spec_gtype type gType not implemented*)

val param_spec_float :
  string -> string -> string -> float -> float -> float -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_param_spec_flags type gType not implemented*)

(*Not implemented g_param_spec_enum type gType not implemented*)

val param_spec_double :
  string -> string -> string -> float -> float -> float -> Param_flags.t_list -> Param_spec.t ptr

val param_spec_char :
  string -> string -> string -> int -> int -> int -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_param_spec_boxed type gType not implemented*)

val param_spec_boolean :
  string -> string -> string -> bool -> Param_flags.t_list -> Param_spec.t ptr

(*Not implemented g_gtype_get_type return type gType not handled*)

(*Not implemented g_flags_to_string type gType not implemented*)

(*Not implemented g_flags_register_static return type gType not handled*)

val flags_get_value_by_nick :
  Flags_class.t structure ptr -> string -> Flags_value.t structure ptr

val flags_get_value_by_name :
  Flags_class.t structure ptr -> string -> Flags_value.t structure ptr

val flags_get_first_value :
  Flags_class.t structure ptr -> Unsigned.uint32 -> Flags_value.t structure ptr

(*Not implemented g_flags_complete_type_info type gType not implemented*)

(*Not implemented g_enum_to_string type gType not implemented*)

(*Not implemented g_enum_register_static return type gType not handled*)

val enum_get_value_by_nick :
  Enum_class.t structure ptr -> string -> Enum_value.t structure ptr

val enum_get_value_by_name :
  Enum_class.t structure ptr -> string -> Enum_value.t structure ptr

val enum_get_value :
  Enum_class.t structure ptr -> int32 -> Enum_value.t structure ptr

(*Not implemented g_enum_complete_type_info type gType not implemented*)

val cclosure_marshal_generic :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__VOID :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__VARIANT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__ULONG :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__UINT_POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__UINT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__UCHAR :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__STRING :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__PARAM :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__OBJECT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__LONG :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__INT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__FLOAT :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__FLAGS :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__ENUM :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__DOUBLE :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__CHAR :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__BOXED :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_VOID__BOOLEAN :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_STRING__OBJECT_POINTER :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_BOOLEAN__FLAGS :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

val cclosure_marshal_BOOLEAN__BOXED_BOXED :
  Closure.t structure ptr -> Value.t structure ptr -> Unsigned.uint32 -> Value.t structure ptr -> unit ptr option -> unit ptr option -> unit

(*Not implemented g_boxed_free type gType not implemented*)

(*Not implemented g_boxed_copy type gType not implemented*)

