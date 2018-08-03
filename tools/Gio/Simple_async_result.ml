open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_simple_async_result_new type callback not implemented*)
(*Not implemented g_simple_async_result_new_from_error type callback not implemented*)
(*Not implemented g_simple_async_result_is_valid type interface not implemented*)
let complete =
  foreign "g_simple_async_result_complete" (t_typ @-> returning (void))
let complete_in_idle =
  foreign "g_simple_async_result_complete_in_idle" (t_typ @-> returning (void))
let get_op_res_gboolean =
  foreign "g_simple_async_result_get_op_res_gboolean" (t_typ @-> returning (bool))
let get_op_res_gssize =
  foreign "g_simple_async_result_get_op_res_gssize" (t_typ @-> returning (int64_t))
let propagate_error self =
  let propagate_error_raw =
    foreign "g_simple_async_result_propagate_error" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = propagate_error_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_check_cancellable =
  foreign "g_simple_async_result_set_check_cancellable" (t_typ @-> ptr_opt Cancellable.t_typ @-> returning (void))
let set_from_error =
  foreign "g_simple_async_result_set_from_error" (t_typ @-> ptr Error.t_typ @-> returning (void))
let set_handle_cancellation =
  foreign "g_simple_async_result_set_handle_cancellation" (t_typ @-> bool @-> returning (void))
let set_op_res_gboolean =
  foreign "g_simple_async_result_set_op_res_gboolean" (t_typ @-> bool @-> returning (void))
let set_op_res_gssize =
  foreign "g_simple_async_result_set_op_res_gssize" (t_typ @-> int64_t @-> returning (void))
