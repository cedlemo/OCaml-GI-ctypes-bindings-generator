open Ctypes

type t
val t_typ : t structure typ

val f_dummy1: (unit ptr, t structure) field
val f_dummy2: (unit ptr, t structure) field
val f_dummy3: (unit ptr, t structure) field
val f_dummy4: (int32, t structure) field
val f_dummy5: (bool, t structure) field
val f_dummy6: (unit ptr, t structure) field

val init :
  t structure ptr -> Hash_table.t.t structure (* unit *) ptr -> unit
val next :
  t structure ptr -> (bool * unit ptr option * unit ptr option)
val remove :
  t structure ptr -> unit
val replace :
  t structure ptr -> unit ptr option -> unit
val steal :
  t structure ptr -> unit
