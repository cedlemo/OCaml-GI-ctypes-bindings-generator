open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Value"

(*Struct field Value : gType tag not implemented*)
(*Struct field Value : C Array type for Types.Array tag tag not implemented*)
let copy =
  foreign "g_value_copy" (ptr t_typ @-> ptr t_typ @-> returning (void))
let dup_object =
  foreign "g_value_dup_object" (ptr t_typ @-> returning (ptr Object.t_typ))
let dup_string =
  foreign "g_value_dup_string" (ptr t_typ @-> returning (string_opt))
let dup_variant =
  foreign "g_value_dup_variant" (ptr t_typ @-> returning (ptr_opt Variant.t_typ))
let fits_pointer =
  foreign "g_value_fits_pointer" (ptr t_typ @-> returning (bool))
let get_boolean =
  foreign "g_value_get_boolean" (ptr t_typ @-> returning (bool))
let get_boxed =
  foreign "g_value_get_boxed" (ptr t_typ @-> returning (ptr_opt void))
let get_char =
  foreign "g_value_get_char" (ptr t_typ @-> returning (int8_t))
let get_double =
  foreign "g_value_get_double" (ptr t_typ @-> returning (double))
let get_enum =
  foreign "g_value_get_enum" (ptr t_typ @-> returning (int32_t))
let get_flags =
  foreign "g_value_get_flags" (ptr t_typ @-> returning (uint32_t))
let get_float =
  foreign "g_value_get_float" (ptr t_typ @-> returning (float))
(*Not implemented g_value_get_gtype return type gType not handled*)
let get_int =
  foreign "g_value_get_int" (ptr t_typ @-> returning (int32_t))
let get_int64 =
  foreign "g_value_get_int64" (ptr t_typ @-> returning (int64_t))
let get_long =
  foreign "g_value_get_long" (ptr t_typ @-> returning (int64_t))
let get_object =
  foreign "g_value_get_object" (ptr t_typ @-> returning (ptr Object.t_typ))
let get_param =
  foreign "g_value_get_param" (ptr t_typ @-> returning (ptr Param_spec.t_typ))
let get_pointer =
  foreign "g_value_get_pointer" (ptr t_typ @-> returning (ptr_opt void))
let get_schar =
  foreign "g_value_get_schar" (ptr t_typ @-> returning (int8_t))
let get_string =
  foreign "g_value_get_string" (ptr t_typ @-> returning (string_opt))
let get_uchar =
  foreign "g_value_get_uchar" (ptr t_typ @-> returning (uint8_t))
let get_uint =
  foreign "g_value_get_uint" (ptr t_typ @-> returning (uint32_t))
let get_uint64 =
  foreign "g_value_get_uint64" (ptr t_typ @-> returning (uint64_t))
let get_ulong =
  foreign "g_value_get_ulong" (ptr t_typ @-> returning (uint64_t))
let get_variant =
  foreign "g_value_get_variant" (ptr t_typ @-> returning (ptr_opt Variant.t_typ))
(*Not implemented g_value_init type gType not implemented*)
let init_from_instance =
  foreign "g_value_init_from_instance" (ptr t_typ @-> ptr Type_instance.t_typ @-> returning (void))
let peek_pointer =
  foreign "g_value_peek_pointer" (ptr t_typ @-> returning (ptr_opt void))
let reset =
  foreign "g_value_reset" (ptr t_typ @-> returning (ptr t_typ))
let set_boolean =
  foreign "g_value_set_boolean" (ptr t_typ @-> bool @-> returning (void))
let set_boxed =
  foreign "g_value_set_boxed" (ptr t_typ @-> ptr_opt void @-> returning (void))
let set_boxed_take_ownership =
  foreign "g_value_set_boxed_take_ownership" (ptr t_typ @-> ptr_opt void @-> returning (void))
let set_char =
  foreign "g_value_set_char" (ptr t_typ @-> int8_t @-> returning (void))
let set_double =
  foreign "g_value_set_double" (ptr t_typ @-> double @-> returning (void))
let set_enum =
  foreign "g_value_set_enum" (ptr t_typ @-> int32_t @-> returning (void))
let set_flags =
  foreign "g_value_set_flags" (ptr t_typ @-> uint32_t @-> returning (void))
let set_float =
  foreign "g_value_set_float" (ptr t_typ @-> float @-> returning (void))
(*Not implemented g_value_set_gtype type gType not implemented*)
let set_instance =
  foreign "g_value_set_instance" (ptr t_typ @-> ptr_opt void @-> returning (void))
let set_int =
  foreign "g_value_set_int" (ptr t_typ @-> int32_t @-> returning (void))
let set_int64 =
  foreign "g_value_set_int64" (ptr t_typ @-> int64_t @-> returning (void))
let set_long =
  foreign "g_value_set_long" (ptr t_typ @-> int64_t @-> returning (void))
let set_object =
  foreign "g_value_set_object" (ptr t_typ @-> ptr_opt Object.t_typ @-> returning (void))
let set_param =
  foreign "g_value_set_param" (ptr t_typ @-> ptr_opt Param_spec.t_typ @-> returning (void))
let set_pointer =
  foreign "g_value_set_pointer" (ptr t_typ @-> ptr_opt void @-> returning (void))
let set_schar =
  foreign "g_value_set_schar" (ptr t_typ @-> int8_t @-> returning (void))
let set_static_boxed =
  foreign "g_value_set_static_boxed" (ptr t_typ @-> ptr_opt void @-> returning (void))
let set_static_string =
  foreign "g_value_set_static_string" (ptr t_typ @-> string_opt @-> returning (void))
let set_string =
  foreign "g_value_set_string" (ptr t_typ @-> string_opt @-> returning (void))
let set_string_take_ownership =
  foreign "g_value_set_string_take_ownership" (ptr t_typ @-> string_opt @-> returning (void))
let set_uchar =
  foreign "g_value_set_uchar" (ptr t_typ @-> uint8_t @-> returning (void))
let set_uint =
  foreign "g_value_set_uint" (ptr t_typ @-> uint32_t @-> returning (void))
let set_uint64 =
  foreign "g_value_set_uint64" (ptr t_typ @-> uint64_t @-> returning (void))
let set_ulong =
  foreign "g_value_set_ulong" (ptr t_typ @-> uint64_t @-> returning (void))
let set_variant =
  foreign "g_value_set_variant" (ptr t_typ @-> ptr_opt Variant.t_typ @-> returning (void))
let take_boxed =
  foreign "g_value_take_boxed" (ptr t_typ @-> ptr_opt void @-> returning (void))
let take_string =
  foreign "g_value_take_string" (ptr t_typ @-> string_opt @-> returning (void))
let take_variant =
  foreign "g_value_take_variant" (ptr t_typ @-> ptr_opt Variant.t_typ @-> returning (void))
let transform =
  foreign "g_value_transform" (ptr t_typ @-> ptr t_typ @-> returning (bool))
let unset =
  foreign "g_value_unset" (ptr t_typ @-> returning (void))
(*Not implemented g_value_type_compatible type gType not implemented*)
(*Not implemented g_value_type_transformable type gType not implemented*)
