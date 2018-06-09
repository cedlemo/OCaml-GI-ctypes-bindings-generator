open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_data_output_stream_new" (Output_stream.t_typ @-> returning (t_typ))
let get_byte_order =
  foreign "g_data_output_stream_get_byte_order" (t_typ @-> returning (Data_stream_byte_order.t_view))
let put_byte self data cancellable =
  let put_byte_raw =
    foreign "g_data_output_stream_put_byte" (t_typ @-> uint8_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_byte_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_int16 self data cancellable =
  let put_int16_raw =
    foreign "g_data_output_stream_put_int16" (t_typ @-> int16_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_int16_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_int32 self data cancellable =
  let put_int32_raw =
    foreign "g_data_output_stream_put_int32" (t_typ @-> int32_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_int32_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_int64 self data cancellable =
  let put_int64_raw =
    foreign "g_data_output_stream_put_int64" (t_typ @-> int64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_int64_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_string self str cancellable =
  let put_string_raw =
    foreign "g_data_output_stream_put_string" (t_typ @-> string @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_string_raw self str cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_uint16 self data cancellable =
  let put_uint16_raw =
    foreign "g_data_output_stream_put_uint16" (t_typ @-> uint16_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_uint16_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_uint32 self data cancellable =
  let put_uint32_raw =
    foreign "g_data_output_stream_put_uint32" (t_typ @-> uint32_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_uint32_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let put_uint64 self data cancellable =
  let put_uint64_raw =
    foreign "g_data_output_stream_put_uint64" (t_typ @-> uint64_t @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = put_uint64_raw self data cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_byte_order =
  foreign "g_data_output_stream_set_byte_order" (t_typ @-> Data_stream_byte_order.t_view @-> returning (void))
