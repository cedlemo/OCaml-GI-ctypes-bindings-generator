open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_etag =
  foreign "g_file_io_stream_get_etag" (t_typ @-> returning (string_opt))
let query_info self attributes cancellable =
  let query_info_raw =
    foreign "g_file_io_stream_query_info" (t_typ @-> string @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (File_info.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = query_info_raw self attributes cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_file_io_stream_query_info_async type callback not implemented*)
(*Not implemented g_file_io_stream_query_info_finish type interface not implemented*)
