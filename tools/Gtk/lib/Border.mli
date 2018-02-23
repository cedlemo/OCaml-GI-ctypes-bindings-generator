open Ctypes

type t
val t_typ : t structure typ

val f_left: (int, t structure) field
val f_right: (int, t structure) field
val f_top: (int, t structure) field
val f_bottom: (int, t structure) field

val create:
  unit -> t structure ptr
val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
