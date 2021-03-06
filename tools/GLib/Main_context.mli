open Ctypes

type t
val t_typ : t structure typ

val create :
  unit -> t structure ptr
val acquire :
  t structure ptr -> bool
val add_poll :
  t structure ptr -> Poll_fd.t structure ptr -> int32 -> unit
(*Not implemented g_main_context_check type C Array type for Types.Array tag not implemented*)
val dispatch :
  t structure ptr -> unit
val find_source_by_funcs_user_data :
  t structure ptr -> Source_funcs.t structure ptr -> unit ptr option -> Source.t structure ptr
val find_source_by_id :
  t structure ptr -> Unsigned.uint32 -> Source.t structure ptr
val find_source_by_user_data :
  t structure ptr -> unit ptr option -> Source.t structure ptr
(*Not implemented g_main_context_invoke_full type callback not implemented*)
val is_owner :
  t structure ptr -> bool
val iteration :
  t structure ptr -> bool -> bool
val pending :
  t structure ptr -> bool
val pop_thread_default :
  t structure ptr -> unit
val prepare :
  t structure ptr -> int32 ptr -> bool
val push_thread_default :
  t structure ptr -> unit
(*Not implemented g_main_context_query type C Array type for Types.Array tag not implemented*)
val incr_ref :
  t structure ptr -> t structure ptr
val release :
  t structure ptr -> unit
val remove_poll :
  t structure ptr -> Poll_fd.t structure ptr -> unit
val unref :
  t structure ptr -> unit
(*Not implemented g_main_context_wait type union not implemented*)
val wakeup :
  t structure ptr -> unit
val default :
  unit -> t structure ptr
val get_thread_default :
  unit -> t structure ptr
val ref_thread_default :
  unit -> t structure ptr
