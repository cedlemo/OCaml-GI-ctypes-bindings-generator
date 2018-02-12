open Ctypes

type t
val t_typ : t union typ
val f_v_int: (int32, t union) field
val f_v_long: (int64, t union) field
val f_v_int64: (int64, t union) field
val f_v_double: (float, t union) field
val f_v_pointer: (unit ptr, t union) field

