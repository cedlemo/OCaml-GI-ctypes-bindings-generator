open Ctypes

type t
val t_typ : t typ

(*Not implemented g_task_new type callback not implemented*)
(*Not implemented g_task_is_valid type interface not implemented*)
(*Not implemented g_task_report_error type callback not implemented*)
val get_cancellable :
  t -> Cancellable.t
val get_check_cancellable :
  t -> bool
val get_completed :
  t -> bool
val get_context :
  t -> Main_context.t structure ptr
val get_priority :
  t -> int32
val get_return_on_cancel :
  t -> bool
val get_source_object :
  t -> Object.t
val get_source_tag :
  t -> unit ptr option
val get_task_data :
  t -> unit ptr option
val had_error :
  t -> bool
val propagate_boolean :
  t -> (bool, Error.t structure ptr option) result
val propagate_int :
  t -> (int64, Error.t structure ptr option) result
val propagate_pointer :
  t -> (unit ptr option, Error.t structure ptr option) result
val return_boolean :
  t -> bool -> unit
val return_error :
  t -> Error.t structure ptr -> unit
val return_error_if_cancelled :
  t -> bool
val return_int :
  t -> int64 -> unit
(*Not implemented g_task_return_pointer type callback not implemented*)
val set_check_cancellable :
  t -> bool -> unit
val set_priority :
  t -> int32 -> unit
val set_return_on_cancel :
  t -> bool -> bool
val set_source_tag :
  t -> unit ptr option -> unit
(*Not implemented g_task_set_task_data type callback not implemented*)
