open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let clear_pending =
  foreign "g_output_stream_clear_pending" (ptr t_typ @-> returning (void))
(*Not implemented g_output_stream_close type object not implemented*)
(*Not implemented g_output_stream_close_async type object not implemented*)
(*Not implemented g_output_stream_close_finish type interface not implemented*)
(*Not implemented g_output_stream_flush type object not implemented*)
(*Not implemented g_output_stream_flush_async type object not implemented*)
(*Not implemented g_output_stream_flush_finish type interface not implemented*)
let has_pending =
  foreign "g_output_stream_has_pending" (ptr t_typ @-> returning (bool))
let is_closed =
  foreign "g_output_stream_is_closed" (ptr t_typ @-> returning (bool))
let is_closing =
  foreign "g_output_stream_is_closing" (ptr t_typ @-> returning (bool))
let set_pending self =
  let set_pending_raw =
    foreign "g_output_stream_set_pending" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = set_pending_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_output_stream_splice type object not implemented*)
(*Not implemented g_output_stream_splice_async type object not implemented*)
(*Not implemented g_output_stream_splice_finish type interface not implemented*)
(*Not implemented g_output_stream_write type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_all_finish type interface not implemented*)
(*Not implemented g_output_stream_write_async type C Array type for Types.Array tag not implemented*)
(*Not implemented g_output_stream_write_bytes type object not implemented*)
(*Not implemented g_output_stream_write_bytes_async type object not implemented*)
(*Not implemented g_output_stream_write_bytes_finish type interface not implemented*)
(*Not implemented g_output_stream_write_finish type interface not implemented*)
