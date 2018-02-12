open Ctypes

type t
val t_typ : t structure typ

(*Struct field Value : gType tag not implemented*)
(*Struct field Value : C Array type for Types.Array tag tag not implemented*)
val copy:
  t structure ptr -> t structure ptr -> unit
(*Not implemented g_value_dup_object return type object not handled*)
val dup_string:
  t structure ptr -> string option
val dup_variant:
  t structure ptr -> Variant.t structure ptr
val fits_pointer:
  t structure ptr -> bool
val get_boolean:
  t structure ptr -> bool
val get_boxed:
  t structure ptr -> unit ptr option
val get_char:
  t structure ptr -> int
val get_double:
  t structure ptr -> float
val get_enum:
  t structure ptr -> int32
val get_flags:
  t structure ptr -> Unsigned.uint32
val get_float:
  t structure ptr -> float
(*Not implemented g_value_get_gtype return type gType not handled*)
val get_int:
  t structure ptr -> int32
val get_int64:
  t structure ptr -> int64
val get_long:
  t structure ptr -> int64
(*Not implemented g_value_get_object return type object not handled*)
(*Not implemented g_value_get_param return type object not handled*)
val get_pointer:
  t structure ptr -> unit ptr option
val get_schar:
  t structure ptr -> int
val get_string:
  t structure ptr -> string option
val get_uchar:
  t structure ptr -> Unsigned.uint8
val get_uint:
  t structure ptr -> Unsigned.uint32
val get_uint64:
  t structure ptr -> Unsigned.uint64
val get_ulong:
  t structure ptr -> Unsigned.uint64
val get_variant:
  t structure ptr -> Variant.t structure ptr
(*Not implemented g_value_init type gType not implemented*)
val init_from_instance:
  t structure ptr -> Type_instance.t structure ptr -> unit
val peek_pointer:
  t structure ptr -> unit ptr option
val reset:
  t structure ptr -> t structure ptr
val set_boolean:
  t structure ptr -> bool -> unit
val set_boxed:
  t structure ptr -> unit ptr option -> unit
val set_boxed_take_ownership:
  t structure ptr -> unit ptr option -> unit
val set_char:
  t structure ptr -> int -> unit
val set_double:
  t structure ptr -> float -> unit
val set_enum:
  t structure ptr -> int32 -> unit
val set_flags:
  t structure ptr -> Unsigned.uint32 -> unit
val set_float:
  t structure ptr -> float -> unit
(*Not implemented g_value_set_gtype type gType not implemented*)
val set_instance:
  t structure ptr -> unit ptr option -> unit
val set_int:
  t structure ptr -> int32 -> unit
val set_int64:
  t structure ptr -> int64 -> unit
val set_long:
  t structure ptr -> int64 -> unit
(*Not implemented g_value_set_object type object not implemented*)
(*Not implemented g_value_set_param type object not implemented*)
val set_pointer:
  t structure ptr -> unit ptr option -> unit
val set_schar:
  t structure ptr -> int -> unit
val set_static_boxed:
  t structure ptr -> unit ptr option -> unit
val set_static_string:
  t structure ptr -> string option -> unit
val set_string:
  t structure ptr -> string option -> unit
val set_string_take_ownership:
  t structure ptr -> string option -> unit
val set_uchar:
  t structure ptr -> Unsigned.uint8 -> unit
val set_uint:
  t structure ptr -> Unsigned.uint32 -> unit
val set_uint64:
  t structure ptr -> Unsigned.uint64 -> unit
val set_ulong:
  t structure ptr -> Unsigned.uint64 -> unit
val set_variant:
  t structure ptr -> Variant.t structure ptr option -> unit
val take_boxed:
  t structure ptr -> unit ptr option -> unit
val take_string:
  t structure ptr -> string option -> unit
val take_variant:
  t structure ptr -> Variant.t structure ptr option -> unit
val transform:
  t structure ptr -> t structure ptr -> bool
val unset:
  t structure ptr -> unit
(*Not implemented g_value_type_compatible type gType not implemented*)
(*Not implemented g_value_type_transformable type gType not implemented*)
