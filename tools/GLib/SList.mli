open Ctypes

type t
val t_typ : t structure typ

val f_data: (unit ptr, t structure) field
val f_next: (SList.t structure (* unit *) ptr, t structure) field

