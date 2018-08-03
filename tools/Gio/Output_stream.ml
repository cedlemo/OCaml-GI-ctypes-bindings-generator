open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let clear_pending =
  foreign "g_output_stream_clear_pending" (t_typ @-> returning (void))
let close self cancellable =
  let close_raw =
    foreign "g_output_stream_close" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_output_stream_close_async type callback not implemented*)
(*Not implemented g_output_stream_close_finish type interface not implemented*)
let flush self cancellable =
  let flush_raw =
    foreign "g_output_stream_flush" (t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = flush_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_output_stream_flush_async type callback not implemented*)
(*Not implemented g_output_stream_flush_finish type interface not implemented*)
let has_pending =
  foreign "g_output_stream_has_pending" (t_typ @-> returning (bool))
let is_closed =
  foreign "g_output_stream_is_closed" (t_typ @-> returning (bool))
let is_closing =
  foreign "g_output_stream_is_closing" (t_typ @-> returning (bool))
let set_pending self =
  let set_pending_raw =
    foreign "g_output_stream_set_pending" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_pending_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let splice self source flags cancellable =
  let splice_raw =
    foreign "g_output_stream_splice" (t_typ @-> ptr Input_stream.t_typ @-> Output_stream_splice_flags.t_list_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = splice_raw self source flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_output_stream_splice_async type callback not implemented*)
(*Not implemented g_output_stream_splice_finish type interface not implemented*)
(*Not implemented g_output_stream_write type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_finish type interface not implemented*)
(*Not implemented g_output_stream_write_async type C Array type for Types.Array tag not implemented*)
let write_bytes self bytes cancellable =
  let write_bytes_raw =
    foreign "g_output_stream_write_bytes" (t_typ @-> ptr Bytes.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = write_bytes_raw self bytes cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_output_stream_write_bytes_async type callback not implemented*)
(*Not implemented g_output_stream_write_bytes_finish type interface not implemented*)
(*Not implemented g_output_stream_write_finish type interface not implemented*)
