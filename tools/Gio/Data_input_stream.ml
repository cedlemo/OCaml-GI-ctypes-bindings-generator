open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_data_input_stream_new" (Input_stream.t_typ @-> returning (t_typ))
let get_byte_order =
  foreign "g_data_input_stream_get_byte_order" (t_typ @-> returning (Data_stream_byte_order.t_view))
let get_newline_type =
  foreign "g_data_input_stream_get_newline_type" (t_typ @-> returning (Data_stream_newline_type.t_view))
let read_byte self cancellable =
  let read_byte_raw =
    foreign "g_data_input_stream_read_byte" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint8_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_byte_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_int16 self cancellable =
  let read_int16_raw =
    foreign "g_data_input_stream_read_int16" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int16_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_int16_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_int32 self cancellable =
  let read_int32_raw =
    foreign "g_data_input_stream_read_int32" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_int32_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_int64 self cancellable =
  let read_int64_raw =
    foreign "g_data_input_stream_read_int64" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_int64_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_data_input_stream_read_line return type C Array type for Types.Array tag not handled*)
(*Not implemented g_data_input_stream_read_line_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_line_finish type interface not implemented*)
(*Not implemented g_data_input_stream_read_line_finish_utf8 type interface not implemented*)
let read_line_utf8 self cancellable =
  let read_line_utf8_raw =
    foreign "g_data_input_stream_read_line_utf8" (t_typ @-> Cancellable.t_typ @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let length_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = read_line_utf8_raw self cancellable length_ptr err_ptr_ptr in
  let get_ret_value () =
    let length = !@ length_ptr in
    (ret, length)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let read_uint16 self cancellable =
  let read_uint16_raw =
    foreign "g_data_input_stream_read_uint16" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint16_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_uint16_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_uint32 self cancellable =
  let read_uint32_raw =
    foreign "g_data_input_stream_read_uint32" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_uint32_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_uint64 self cancellable =
  let read_uint64_raw =
    foreign "g_data_input_stream_read_uint64" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (uint64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = read_uint64_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let read_until self stop_chars cancellable =
  let read_until_raw =
    foreign "g_data_input_stream_read_until" (t_typ @-> string @-> Cancellable.t_typ @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let length_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = read_until_raw self stop_chars cancellable length_ptr err_ptr_ptr in
  let get_ret_value () =
    let length = !@ length_ptr in
    (ret, length)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_data_input_stream_read_until_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_until_finish type interface not implemented*)
let read_upto self stop_chars stop_chars_len cancellable =
  let read_upto_raw =
    foreign "g_data_input_stream_read_upto" (t_typ @-> string @-> int64_t @-> Cancellable.t_typ @-> ptr (uint64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let length_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = read_upto_raw self stop_chars stop_chars_len cancellable length_ptr err_ptr_ptr in
  let get_ret_value () =
    let length = !@ length_ptr in
    (ret, length)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_data_input_stream_read_upto_async type callback not implemented*)
(*Not implemented g_data_input_stream_read_upto_finish type interface not implemented*)
let set_byte_order =
  foreign "g_data_input_stream_set_byte_order" (t_typ @-> Data_stream_byte_order.t_view @-> returning (void))
let set_newline_type =
  foreign "g_data_input_stream_set_newline_type" (t_typ @-> Data_stream_newline_type.t_view @-> returning (void))
