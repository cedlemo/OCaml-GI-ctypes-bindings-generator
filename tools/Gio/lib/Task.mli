open Ctypes

type t
val t_typ : t typ

(*Not implemented g_task_new type object not implemented*)
(*Not implemented g_task_is_valid type interface not implemented*)
(*Not implemented g_task_report_error type object not implemented*)
(*Not implemented g_task_get_cancellable return type object not handled*)
val get_check_cancellable:
  t structure ptr -> bool
val get_completed:
  t structure ptr -> bool
val get_context:
  t structure ptr -> Main_context.t structure ptr
val get_priority:
  t structure ptr -> int32
val get_return_on_cancel:
  t structure ptr -> bool
(*Not implemented g_task_get_source_object return type object not handled*)
val get_source_tag:
  t structure ptr -> unit ptr option
val get_task_data:
  t structure ptr -> unit ptr option
val had_error:
  t structure ptr -> bool
val propagate_boolean:
  t structure ptr -> (bool, Error.t structure ptr option) result
val propagate_int:
  t structure ptr -> (int64, Error.t structure ptr option) result
val propagate_pointer:
  t structure ptr -> (unit ptr option, Error.t structure ptr option) result
val return_boolean:
  t structure ptr -> bool -> unit
val return_error:
  t structure ptr -> Error.t structure ptr -> unit
val return_error_if_cancelled:
  t structure ptr -> bool
val return_int:
  t structure ptr -> int64 -> unit
(*Not implemented g_task_return_pointer type callback not implemented*)
val set_check_cancellable:
  t structure ptr -> bool -> unit
val set_priority:
  t structure ptr -> int32 -> unit
val set_return_on_cancel:
  t structure ptr -> bool -> bool
val set_source_tag:
  t structure ptr -> unit ptr option -> unit
(*Not implemented g_task_set_task_data type callback not implemented*)
