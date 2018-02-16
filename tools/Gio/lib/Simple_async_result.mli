open Ctypes

type t
val t_typ : t typ

(*Not implemented g_simple_async_result_new type object not implemented*)
(*Not implemented g_simple_async_result_new_from_error type object not implemented*)
(*Not implemented g_simple_async_result_is_valid type interface not implemented*)
val complete:
  t structure ptr -> unit
val complete_in_idle:
  t structure ptr -> unit
val get_op_res_gboolean:
  t structure ptr -> bool
val get_op_res_gssize:
  t structure ptr -> int64
val propagate_error:
  t structure ptr -> (bool, Error.t structure ptr option) result
(*Not implemented g_simple_async_result_set_check_cancellable type object not implemented*)
val set_from_error:
  t structure ptr -> Error.t structure ptr -> unit
val set_handle_cancellation:
  t structure ptr -> bool -> unit
val set_op_res_gboolean:
  t structure ptr -> bool -> unit
val set_op_res_gssize:
  t structure ptr -> int64 -> unit
