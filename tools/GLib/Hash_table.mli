open Ctypes

type t
val t_typ : t structure typ

val add :
  t.t structure (* unit *) ptr -> unit ptr option -> bool
val contains :
  t.t structure (* unit *) ptr -> unit ptr option -> bool
val destroy :
  t.t structure (* unit *) ptr -> unit
val insert :
  t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option -> bool
val lookup :
  t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option
val lookup_extended :
  t.t structure (* unit *) ptr -> unit ptr option -> (bool * unit ptr option * unit ptr option)
val remove :
  t.t structure (* unit *) ptr -> unit ptr option -> bool
val remove_all :
  t.t structure (* unit *) ptr -> unit
val replace :
  t.t structure (* unit *) ptr -> unit ptr option -> unit ptr option -> bool
val size :
  t.t structure (* unit *) ptr -> Unsigned.uint32
val steal :
  t.t structure (* unit *) ptr -> unit ptr option -> bool
val steal_all :
  t.t structure (* unit *) ptr -> unit
val unref :
  t.t structure (* unit *) ptr -> unit
