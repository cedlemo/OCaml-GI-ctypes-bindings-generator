open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_buffered_input_stream_new" (Input_stream.t_typ @-> returning (Input_stream.t_typ))
let create_sized =
  foreign "g_buffered_input_stream_new_sized" (Input_stream.t_typ @-> uint64_t @-> returning (Input_stream.t_typ))
let fill self count cancellable =
  let fill_raw =
    foreign "g_buffered_input_stream_fill" (t_typ @-> int64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = fill_raw self count cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_buffered_input_stream_fill_async type callback not implemented*)
(*Not implemented g_buffered_input_stream_fill_finish type interface not implemented*)
let get_available =
  foreign "g_buffered_input_stream_get_available" (t_typ @-> returning (uint64_t))
let get_buffer_size =
  foreign "g_buffered_input_stream_get_buffer_size" (t_typ @-> returning (uint64_t))
(*Not implemented g_buffered_input_stream_peek type C Array type for Types.Array tag not implemented*)
(*Not implemented g_buffered_input_stream_peek_buffer return type C Array type for Types.Array tag not handled*)
let read_byte self cancellable =
  let read_byte_raw =
    foreign "g_buffered_input_stream_read_byte" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_byte_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_buffer_size =
  foreign "g_buffered_input_stream_set_buffer_size" (t_typ @-> uint64_t @-> returning (void))
