open Ctypes

type t
val t_typ : t structure typ

val f_width: (int32, t structure) field
val f_height: (int32, t structure) field

val create:
  unit -> t structure ptr
val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
