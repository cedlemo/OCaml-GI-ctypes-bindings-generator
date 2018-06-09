open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_io_stream_splice_finish type interface not implemented*)
let clear_pending =
  foreign "g_io_stream_clear_pending" (t_typ @-> returning (void))
let close self cancellable =
  let close_raw =
    foreign "g_io_stream_close" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = close_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_io_stream_close_async type callback not implemented*)
(*Not implemented g_io_stream_close_finish type interface not implemented*)
let get_input_stream =
  foreign "g_io_stream_get_input_stream" (t_typ @-> returning (Input_stream.t_typ))
let get_output_stream =
  foreign "g_io_stream_get_output_stream" (t_typ @-> returning (Output_stream.t_typ))
let has_pending =
  foreign "g_io_stream_has_pending" (t_typ @-> returning (bool))
let is_closed =
  foreign "g_io_stream_is_closed" (t_typ @-> returning (bool))
let set_pending self =
  let set_pending_raw =
    foreign "g_io_stream_set_pending" (t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_pending_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_io_stream_splice_async type callback not implemented*)
