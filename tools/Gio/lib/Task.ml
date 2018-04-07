open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_task_new type callback not implemented*)
(*Not implemented g_task_is_valid type interface not implemented*)
(*Not implemented g_task_report_error type callback not implemented*)
let get_cancellable =
  foreign "g_task_get_cancellable" (t_typ @-> returning (Cancellable.t_typ))
let get_check_cancellable =
  foreign "g_task_get_check_cancellable" (t_typ @-> returning (bool))
let get_completed =
  foreign "g_task_get_completed" (t_typ @-> returning (bool))
let get_context =
  foreign "g_task_get_context" (t_typ @-> returning (ptr Main_context.t_typ))
let get_priority =
  foreign "g_task_get_priority" (t_typ @-> returning (int32_t))
let get_return_on_cancel =
  foreign "g_task_get_return_on_cancel" (t_typ @-> returning (bool))
let get_source_object =
  foreign "g_task_get_source_object" (t_typ @-> returning (Object.t_typ))
let get_source_tag =
  foreign "g_task_get_source_tag" (t_typ @-> returning (ptr_opt void))
let get_task_data =
  foreign "g_task_get_task_data" (t_typ @-> returning (ptr_opt void))
let had_error =
  foreign "g_task_had_error" (t_typ @-> returning (bool))
let propagate_boolean self =
  let propagate_boolean_raw =
    foreign "g_task_propagate_boolean" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = propagate_boolean_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let propagate_int self =
  let propagate_int_raw =
    foreign "g_task_propagate_int" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = propagate_int_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let propagate_pointer self =
  let propagate_pointer_raw =
    foreign "g_task_propagate_pointer" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt void))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = propagate_pointer_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let return_boolean =
  foreign "g_task_return_boolean" (t_typ @-> bool @-> returning (void))
let return_error =
  foreign "g_task_return_error" (t_typ @-> ptr Error.t_typ @-> returning (void))
let return_error_if_cancelled =
  foreign "g_task_return_error_if_cancelled" (t_typ @-> returning (bool))
let return_int =
  foreign "g_task_return_int" (t_typ @-> int64_t @-> returning (void))
(*Not implemented g_task_return_pointer type callback not implemented*)
let set_check_cancellable =
  foreign "g_task_set_check_cancellable" (t_typ @-> bool @-> returning (void))
let set_priority =
  foreign "g_task_set_priority" (t_typ @-> int32_t @-> returning (void))
let set_return_on_cancel =
  foreign "g_task_set_return_on_cancel" (t_typ @-> bool @-> returning (bool))
let set_source_tag =
  foreign "g_task_set_source_tag" (t_typ @-> ptr_opt void @-> returning (void))
(*Not implemented g_task_set_task_data type callback not implemented*)
