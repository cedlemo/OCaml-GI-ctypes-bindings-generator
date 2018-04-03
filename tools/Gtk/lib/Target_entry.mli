open Ctypes

type t
val t_typ : t structure typ

val f_target: (string, t structure) field
val f_flags: (Unsigned.uint32, t structure) field
val f_info: (Unsigned.uint32, t structure) field

val create :
  string -> Unsigned.uint32 -> Unsigned.uint32 -> t structure ptr
val copy :
  t structure ptr -> t structure ptr
val free :
  t structure ptr -> unit
