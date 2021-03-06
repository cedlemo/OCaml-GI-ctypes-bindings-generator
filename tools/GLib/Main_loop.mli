open Ctypes

type t
val t_typ : t structure typ

val create :
  Main_context.t structure ptr option -> bool -> t structure ptr
val get_context :
  t structure ptr -> Main_context.t structure ptr
val is_running :
  t structure ptr -> bool
val quit :
  t structure ptr -> unit
val incr_ref :
  t structure ptr -> t structure ptr
val run :
  t structure ptr -> unit
val unref :
  t structure ptr -> unit
