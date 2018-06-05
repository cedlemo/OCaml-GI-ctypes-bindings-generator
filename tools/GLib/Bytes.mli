open Ctypes

type t
val t_typ : t structure typ

(*Not implemented g_bytes_new type C Array type for Types.Array tag not implemented*)
(*Not implemented g_bytes_new_take type C Array type for Types.Array tag not implemented*)
val compare :
  t structure ptr -> t structure ptr -> int32
val equal :
  t structure ptr -> t structure ptr -> bool
(*Not implemented g_bytes_get_data return type C Array type for Types.Array tag not handled*)
val get_size :
  t structure ptr -> Unsigned.uint64
val hash :
  t structure ptr -> Unsigned.uint32
val create_from_bytes :
  t structure ptr -> Unsigned.uint64 -> Unsigned.uint64 -> t structure ptr
val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
val unref_to_array :
  t structure ptr -> Byte_array.t structure ptr
(*Not implemented g_bytes_unref_to_data return type C Array type for Types.Array tag not handled*)
