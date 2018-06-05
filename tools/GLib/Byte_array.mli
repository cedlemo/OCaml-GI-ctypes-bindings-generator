open Ctypes

type t
val t_typ : t structure typ

val f_data: (Unsigned.uint8 ptr, t structure) field
val f_len: (Unsigned.uint32, t structure) field

val free :
  t structure ptr -> bool -> Unsigned.uint8 ptr
val free_to_bytes :
  t structure ptr -> Bytes.t structure ptr
val create :
  unit -> t structure ptr
(*Not implemented g_byte_array_new_take type C Array type for Types.Array tag not implemented*)
val unref :
  t structure ptr -> unit
