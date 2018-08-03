open Ctypes

type t
val t_typ : t typ

(*Not implemented g_simple_async_result_new type callback not implemented*)
(*Not implemented g_simple_async_result_new_from_error type callback not implemented*)
(*Not implemented g_simple_async_result_is_valid type interface not implemented*)
val complete :
  t -> unit
val complete_in_idle :
  t -> unit
val get_op_res_gboolean :
  t -> bool
val get_op_res_gssize :
  t -> int64
val propagate_error :
  t -> (bool, Error.t structure ptr option) result
val set_check_cancellable :
  t -> Cancellable.t ptr option -> unit
val set_from_error :
  t -> Error.t structure ptr -> unit
val set_handle_cancellation :
  t -> bool -> unit
val set_op_res_gboolean :
  t -> bool -> unit
val set_op_res_gssize :
  t -> int64 -> unit
