open Ctypes

type t
val t_typ : t structure typ

val add :
  t structure (* unit ptr *) ptr -> unit ptr option -> bool
val contains :
  t structure (* unit ptr *) ptr -> unit ptr option -> bool
val destroy :
  t structure (* unit ptr *) ptr -> unit
val insert :
  t structure (* unit ptr *) ptr -> unit ptr option -> unit ptr option -> bool
val lookup :
  t structure (* unit ptr *) ptr -> unit ptr option -> unit ptr option
val lookup_extended :
  t structure (* unit ptr *) ptr -> unit ptr option -> (bool * unit ptr option * unit ptr option)
val remove :
  t structure (* unit ptr *) ptr -> unit ptr option -> bool
val remove_all :
  t structure (* unit ptr *) ptr -> unit
val replace :
  t structure (* unit ptr *) ptr -> unit ptr option -> unit ptr option -> bool
val size :
  t structure (* unit ptr *) ptr -> Unsigned.uint32
val steal :
  t structure (* unit ptr *) ptr -> unit ptr option -> bool
val steal_all :
  t structure (* unit ptr *) ptr -> unit
val unref :
  t structure (* unit ptr *) ptr -> unit
