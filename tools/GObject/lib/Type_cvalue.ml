open Ctypes
open Foreign

type t
let t_typ : t union typ = union "Type_cvalue"
let f_v_int = field t_typ "v_int" (int32_t)
let f_v_long = field t_typ "v_long" (int64_t)
let f_v_int64 = field t_typ "v_int64" (int64_t)
let f_v_double = field t_typ "v_double" (double)
let f_v_pointer = field t_typ "v_pointer" (ptr void)
let _ = seal t_typ

