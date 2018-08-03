open Ctypes

type t
val t_typ : t structure typ

val f_ref_count: (Unsigned.uint32, t structure) field
val f_meta_marshal_nouse: (Unsigned.uint32, t structure) field
val f_n_guards: (Unsigned.uint32, t structure) field
val f_n_fnotifiers: (Unsigned.uint32, t structure) field
val f_n_inotifiers: (Unsigned.uint32, t structure) field
val f_in_inotify: (Unsigned.uint32, t structure) field
val f_floating: (Unsigned.uint32, t structure) field
val f_derivative_flag: (Unsigned.uint32, t structure) field
val f_in_marshal: (Unsigned.uint32, t structure) field
val f_is_invalid: (Unsigned.uint32, t structure) field
(*Struct field Closure : callback tag not implemented*)
val f_data: (unit ptr, t structure) field
val f_notifiers: (Closure_notify_data.t structure ptr, t structure) field

val create_object :
  Unsigned.uint32 -> Object.t ptr -> t structure ptr
val create_simple :
  Unsigned.uint32 -> unit ptr option -> t structure ptr
val invalidate :
  t structure ptr -> unit
(*Not implemented g_closure_invoke type C Array type for Types.Array tag not implemented*)
val incr_ref :
  t structure ptr -> t structure ptr
val sink :
  t structure ptr -> unit
val unref :
  t structure ptr -> unit
