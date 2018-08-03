open Ctypes
open Foreign

let c_PARAM_MASK = 255l
let c_PARAM_STATIC_STRINGS = 224l
let c_PARAM_USER_SHIFT = 8l
(*DEPRECATED : Parameter*)
let c_SIGNAL_FLAGS_MASK = 511l
let c_SIGNAL_MATCH_MASK = 63l
let c_TYPE_FLAG_RESERVED_ID_BIT = Unsigned.UInt64.of_string "1"
let c_TYPE_FUNDAMENTAL_MAX = 255l
let c_TYPE_FUNDAMENTAL_SHIFT = 2l
let c_TYPE_RESERVED_BSE_FIRST = 32l
let c_TYPE_RESERVED_BSE_LAST = 48l
let c_TYPE_RESERVED_GLIB_FIRST = 22l
let c_TYPE_RESERVED_GLIB_LAST = 31l
let c_TYPE_RESERVED_USER_FIRST = 49l
(*DEPRECATED : TypeDebugFlags*)
let c_VALUE_COLLECT_FORMAT_MAX_LENGTH = 8l
let c_VALUE_NOCOPY_CONTENTS = 134217728l
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

let type_name_from_instance =
  foreign "g_type_name_from_instance" (ptr Type_instance.t_typ @-> returning (string_opt))

let type_name_from_class =
  foreign "g_type_name_from_class" (ptr Type_class.t_typ @-> returning (string_opt))

(*Not implemented g_type_name type gType not implemented*)

(*Not implemented g_type_is_a type gType not implemented*)

(*Not implemented g_type_interfaces type gType not implemented*)

(*Not implemented g_type_interface_prerequisites type gType not implemented*)

(*Not implemented g_type_interface_peek type gType not implemented*)

(*Not implemented g_type_interface_get_plugin type gType not implemented*)

(*Not implemented g_type_interface_add_prerequisite type gType not implemented*)

let type_get_type_registration_serial =
  foreign "g_type_get_type_registration_serial" (void @-> returning (uint32_t))

(*Not implemented g_type_get_qdata type gType not implemented*)

(*Not implemented g_type_get_plugin type gType not implemented*)

(*Not implemented g_type_get_instance_count type gType not implemented*)

(*Not implemented g_type_fundamental_next return type gType not handled*)

(*Not implemented g_type_fundamental type gType not implemented*)

(*Not implemented g_type_from_name return type gType not handled*)

let type_free_instance =
  foreign "g_type_free_instance" (ptr Type_instance.t_typ @-> returning (void))

(*Not implemented g_type_ensure type gType not implemented*)

(*Not implemented g_type_depth type gType not implemented*)

let type_default_interface_unref =
  foreign "g_type_default_interface_unref" (ptr Type_interface.t_typ @-> returning (void))

(*Not implemented g_type_default_interface_ref type gType not implemented*)

(*Not implemented g_type_default_interface_peek type gType not implemented*)

(*Not implemented g_type_class_ref type gType not implemented*)

(*Not implemented g_type_class_peek_static type gType not implemented*)

(*Not implemented g_type_class_peek type gType not implemented*)

let type_class_adjust_private_offset =
  foreign "g_type_class_adjust_private_offset" (ptr_opt void @-> ptr int32_t @-> returning (void))

(*Not implemented g_type_children type gType not implemented*)

(*Not implemented g_type_check_value_holds type gType not implemented*)

let type_check_value =
  foreign "g_type_check_value" (ptr Value.t_typ @-> returning (bool))

(*Not implemented g_type_check_is_value_type type gType not implemented*)

(*Not implemented g_type_check_instance_is_fundamentally_a type gType not implemented*)

(*Not implemented g_type_check_instance_is_a type gType not implemented*)

let type_check_instance =
  foreign "g_type_check_instance" (ptr Type_instance.t_typ @-> returning (bool))

(*Not implemented g_type_check_class_is_a type gType not implemented*)

(*Not implemented g_type_add_interface_static type gType not implemented*)

(*Not implemented g_type_add_interface_dynamic type gType not implemented*)

(*Not implemented g_type_add_instance_private type gType not implemented*)

(*Not implemented g_type_add_class_private type gType not implemented*)

let strdup_value_contents =
  foreign "g_strdup_value_contents" (ptr Value.t_typ @-> returning (string_opt))

let source_set_dummy_callback =
  foreign "g_source_set_dummy_callback" (ptr Source.t_typ @-> returning (void))

let source_set_closure =
  foreign "g_source_set_closure" (ptr Source.t_typ @-> ptr Closure.t_typ @-> returning (void))

(*Not implemented g_signal_type_cclosure_new type gType not implemented*)

let signal_stop_emission_by_name =
  foreign "g_signal_stop_emission_by_name" (ptr Object.t_typ @-> string @-> returning (void))

let signal_stop_emission =
  foreign "g_signal_stop_emission" (ptr Object.t_typ @-> uint32_t @-> uint32_t @-> returning (void))

(*Not implemented g_signal_set_va_marshaller type gType not implemented*)

let signal_remove_emission_hook =
  foreign "g_signal_remove_emission_hook" (uint32_t @-> uint64_t @-> returning (void))

let signal_query signal_id =
  let signal_query_raw =
    foreign "g_signal_query" (uint32_t @-> ptr (Signal_query.t_typ) @-> returning (void))
  in
  let query_ptr = allocate Signal_query.t_typ (make Signal_query.t_typ) in
  let ret = signal_query_raw signal_id query_ptr in
  let query = !@ query_ptr in
  (query)

(*Not implemented g_signal_parse_name type gType not implemented*)

(*Not implemented g_signal_override_class_closure type gType not implemented*)

let signal_name =
  foreign "g_signal_name" (uint32_t @-> returning (string_opt))

(*Not implemented g_signal_lookup type gType not implemented*)

(*Not implemented g_signal_list_ids type gType not implemented*)

let signal_has_handler_pending =
  foreign "g_signal_has_handler_pending" (ptr Object.t_typ @-> uint32_t @-> uint32_t @-> bool @-> returning (bool))

let signal_handlers_unblock_matched =
  foreign "g_signal_handlers_unblock_matched" (ptr Object.t_typ @-> Signal_match_type.t_list_view @-> uint32_t @-> uint32_t @-> ptr_opt Closure.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (uint32_t))

let signal_handlers_disconnect_matched =
  foreign "g_signal_handlers_disconnect_matched" (ptr Object.t_typ @-> Signal_match_type.t_list_view @-> uint32_t @-> uint32_t @-> ptr_opt Closure.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (uint32_t))

let signal_handlers_destroy =
  foreign "g_signal_handlers_destroy" (ptr Object.t_typ @-> returning (void))

let signal_handlers_block_matched =
  foreign "g_signal_handlers_block_matched" (ptr Object.t_typ @-> Signal_match_type.t_list_view @-> uint32_t @-> uint32_t @-> ptr_opt Closure.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (uint32_t))

let signal_handler_unblock =
  foreign "g_signal_handler_unblock" (ptr Object.t_typ @-> uint64_t @-> returning (void))

let signal_handler_is_connected =
  foreign "g_signal_handler_is_connected" (ptr Object.t_typ @-> uint64_t @-> returning (bool))

let signal_handler_find =
  foreign "g_signal_handler_find" (ptr Object.t_typ @-> Signal_match_type.t_list_view @-> uint32_t @-> uint32_t @-> ptr_opt Closure.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (uint64_t))

let signal_handler_disconnect =
  foreign "g_signal_handler_disconnect" (ptr Object.t_typ @-> uint64_t @-> returning (void))

let signal_handler_block =
  foreign "g_signal_handler_block" (ptr Object.t_typ @-> uint64_t @-> returning (void))

let signal_get_invocation_hint =
  foreign "g_signal_get_invocation_hint" (ptr Object.t_typ @-> returning (ptr Signal_invocation_hint.t_typ))

(*Not implemented g_signal_emitv type C Array type for Types.Array tag not implemented*)

let signal_connect_closure_by_id =
  foreign "g_signal_connect_closure_by_id" (ptr Object.t_typ @-> uint32_t @-> uint32_t @-> ptr Closure.t_typ @-> bool @-> returning (uint64_t))

let signal_connect_closure =
  foreign "g_signal_connect_closure" (ptr Object.t_typ @-> string @-> ptr Closure.t_typ @-> bool @-> returning (uint64_t))

(*Not implemented g_signal_chain_from_overridden type C Array type for Types.Array tag not implemented*)

(*Not implemented g_signal_add_emission_hook type callback not implemented*)

let signal_accumulator_true_handled =
  foreign "g_signal_accumulator_true_handled" (ptr Signal_invocation_hint.t_typ @-> ptr Value.t_typ @-> ptr Value.t_typ @-> ptr_opt void @-> returning (bool))

let signal_accumulator_first_wins =
  foreign "g_signal_accumulator_first_wins" (ptr Signal_invocation_hint.t_typ @-> ptr Value.t_typ @-> ptr Value.t_typ @-> ptr_opt void @-> returning (bool))

(*Not implemented g_pointer_type_register_static return type gType not handled*)

let param_values_cmp =
  foreign "g_param_values_cmp" (ptr Param_spec.t_typ @-> ptr Value.t_typ @-> ptr Value.t_typ @-> returning (int32_t))

let param_value_validate =
  foreign "g_param_value_validate" (ptr Param_spec.t_typ @-> ptr Value.t_typ @-> returning (bool))

let param_value_set_default =
  foreign "g_param_value_set_default" (ptr Param_spec.t_typ @-> ptr Value.t_typ @-> returning (void))

let param_value_defaults =
  foreign "g_param_value_defaults" (ptr Param_spec.t_typ @-> ptr Value.t_typ @-> returning (bool))

let param_value_convert =
  foreign "g_param_value_convert" (ptr Param_spec.t_typ @-> ptr Value.t_typ @-> ptr Value.t_typ @-> bool @-> returning (bool))

(*Not implemented g_param_type_register_static return type gType not handled*)

let param_spec_variant =
  foreign "g_param_spec_variant" (string @-> string @-> string @-> ptr Variant_type.t_typ @-> ptr_opt Variant.t_typ @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_param_spec_unichar type unichar not implemented*)

let param_spec_ulong =
  foreign "g_param_spec_ulong" (string @-> string @-> string @-> uint64_t @-> uint64_t @-> uint64_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_uint64 =
  foreign "g_param_spec_uint64" (string @-> string @-> string @-> uint64_t @-> uint64_t @-> uint64_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_uint =
  foreign "g_param_spec_uint" (string @-> string @-> string @-> uint32_t @-> uint32_t @-> uint32_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_uchar =
  foreign "g_param_spec_uchar" (string @-> string @-> string @-> uint8_t @-> uint8_t @-> uint8_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_string =
  foreign "g_param_spec_string" (string @-> string @-> string @-> string_opt @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_pool_create =
  foreign "g_param_spec_pool_new" (bool @-> returning (ptr Param_spec_pool.t_typ))

let param_spec_pointer =
  foreign "g_param_spec_pointer" (string @-> string @-> string @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_param_spec_param type gType not implemented*)

(*Not implemented g_param_spec_object type gType not implemented*)

let param_spec_long =
  foreign "g_param_spec_long" (string @-> string @-> string @-> int64_t @-> int64_t @-> int64_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_int64 =
  foreign "g_param_spec_int64" (string @-> string @-> string @-> int64_t @-> int64_t @-> int64_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_int =
  foreign "g_param_spec_int" (string @-> string @-> string @-> int32_t @-> int32_t @-> int32_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_param_spec_gtype type gType not implemented*)

let param_spec_float =
  foreign "g_param_spec_float" (string @-> string @-> string @-> float @-> float @-> float @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_param_spec_flags type gType not implemented*)

(*Not implemented g_param_spec_enum type gType not implemented*)

let param_spec_double =
  foreign "g_param_spec_double" (string @-> string @-> string @-> double @-> double @-> double @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

let param_spec_char =
  foreign "g_param_spec_char" (string @-> string @-> string @-> int8_t @-> int8_t @-> int8_t @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_param_spec_boxed type gType not implemented*)

let param_spec_boolean =
  foreign "g_param_spec_boolean" (string @-> string @-> string @-> bool @-> Param_flags.t_list_view @-> returning (ptr Param_spec.t_typ))

(*Not implemented g_gtype_get_type return type gType not handled*)

(*Not implemented g_flags_to_string type gType not implemented*)

(*Not implemented g_flags_register_static return type gType not handled*)

let flags_get_value_by_nick =
  foreign "g_flags_get_value_by_nick" (ptr Flags_class.t_typ @-> string @-> returning (ptr Flags_value.t_typ))

let flags_get_value_by_name =
  foreign "g_flags_get_value_by_name" (ptr Flags_class.t_typ @-> string @-> returning (ptr Flags_value.t_typ))

let flags_get_first_value =
  foreign "g_flags_get_first_value" (ptr Flags_class.t_typ @-> uint32_t @-> returning (ptr Flags_value.t_typ))

(*Not implemented g_flags_complete_type_info type gType not implemented*)

(*Not implemented g_enum_to_string type gType not implemented*)

(*Not implemented g_enum_register_static return type gType not handled*)

let enum_get_value_by_nick =
  foreign "g_enum_get_value_by_nick" (ptr Enum_class.t_typ @-> string @-> returning (ptr Enum_value.t_typ))

let enum_get_value_by_name =
  foreign "g_enum_get_value_by_name" (ptr Enum_class.t_typ @-> string @-> returning (ptr Enum_value.t_typ))

let enum_get_value =
  foreign "g_enum_get_value" (ptr Enum_class.t_typ @-> int32_t @-> returning (ptr Enum_value.t_typ))

(*Not implemented g_enum_complete_type_info type gType not implemented*)

let cclosure_marshal_generic =
  foreign "g_cclosure_marshal_generic" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__VOID =
  foreign "g_cclosure_marshal_VOID__VOID" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__VARIANT =
  foreign "g_cclosure_marshal_VOID__VARIANT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__ULONG =
  foreign "g_cclosure_marshal_VOID__ULONG" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__UINT_POINTER =
  foreign "g_cclosure_marshal_VOID__UINT_POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__UINT =
  foreign "g_cclosure_marshal_VOID__UINT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__UCHAR =
  foreign "g_cclosure_marshal_VOID__UCHAR" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__STRING =
  foreign "g_cclosure_marshal_VOID__STRING" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__POINTER =
  foreign "g_cclosure_marshal_VOID__POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__PARAM =
  foreign "g_cclosure_marshal_VOID__PARAM" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__OBJECT =
  foreign "g_cclosure_marshal_VOID__OBJECT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__LONG =
  foreign "g_cclosure_marshal_VOID__LONG" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__INT =
  foreign "g_cclosure_marshal_VOID__INT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__FLOAT =
  foreign "g_cclosure_marshal_VOID__FLOAT" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__FLAGS =
  foreign "g_cclosure_marshal_VOID__FLAGS" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__ENUM =
  foreign "g_cclosure_marshal_VOID__ENUM" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__DOUBLE =
  foreign "g_cclosure_marshal_VOID__DOUBLE" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__CHAR =
  foreign "g_cclosure_marshal_VOID__CHAR" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__BOXED =
  foreign "g_cclosure_marshal_VOID__BOXED" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_VOID__BOOLEAN =
  foreign "g_cclosure_marshal_VOID__BOOLEAN" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_STRING__OBJECT_POINTER =
  foreign "g_cclosure_marshal_STRING__OBJECT_POINTER" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_BOOLEAN__FLAGS =
  foreign "g_cclosure_marshal_BOOLEAN__FLAGS" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

let cclosure_marshal_BOOLEAN__BOXED_BOXED =
  foreign "g_cclosure_marshal_BOOLEAN__BOXED_BOXED" (ptr Closure.t_typ @-> ptr Value.t_typ @-> uint32_t @-> ptr Value.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (void))

(*Not implemented g_boxed_free type gType not implemented*)

(*Not implemented g_boxed_copy type gType not implemented*)

