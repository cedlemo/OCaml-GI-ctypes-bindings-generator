open Ctypes

type t
val t_typ : t structure typ

val f_stamp: (int32, t structure) field
val f_user_data: (unit ptr, t structure) field
val f_user_data2: (unit ptr, t structure) field
val f_user_data3: (unit ptr, t structure) field

val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
