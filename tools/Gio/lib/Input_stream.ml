open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let clear_pending =
  foreign "g_input_stream_clear_pending" (t_typ @-> returning (void))
let close self cancellable =
  let close_raw =
    foreign "g_input_stream_close" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_input_stream_close_async type callback not implemented*)
(*Not implemented g_input_stream_close_finish type interface not implemented*)
let has_pending =
  foreign "g_input_stream_has_pending" (t_typ @-> returning (bool))
let is_closed =
  foreign "g_input_stream_is_closed" (t_typ @-> returning (bool))
(*Not implemented g_input_stream_read type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_input_stream_read_all_finish type interface not implemented*)
(*Not implemented g_input_stream_read_async type C Array type for Types.Array tag not implemented*)
let read_bytes self count cancellable =
  let read_bytes_raw =
    foreign "g_input_stream_read_bytes" (t_typ @-> uint64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Bytes.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_bytes_raw self count cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_input_stream_read_bytes_async type callback not implemented*)
(*Not implemented g_input_stream_read_bytes_finish type interface not implemented*)
(*Not implemented g_input_stream_read_finish type interface not implemented*)
let set_pending self =
  let set_pending_raw =
    foreign "g_input_stream_set_pending" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_pending_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let skip self count cancellable =
  let skip_raw =
    foreign "g_input_stream_skip" (t_typ @-> uint64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = skip_raw self count cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_input_stream_skip_async type callback not implemented*)
(*Not implemented g_input_stream_skip_finish type interface not implemented*)
