open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Mapped_file"

let create filename writable =
  let create_raw =
    foreign "g_mapped_file_new" (string @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_raw filename writable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_fd fd writable =
  let create_from_fd_raw =
    foreign "g_mapped_file_new_from_fd" (int32_t @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_fd_raw fd writable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let free =
  foreign "g_mapped_file_free" (ptr t_typ @-> returning (void))
let get_bytes =
  foreign "g_mapped_file_get_bytes" (ptr t_typ @-> returning (ptr Bytes.t_typ))
let get_contents =
  foreign "g_mapped_file_get_contents" (ptr t_typ @-> returning (string_opt))
let get_length =
  foreign "g_mapped_file_get_length" (ptr t_typ @-> returning (uint64_t))
let incr_ref =
  foreign "g_mapped_file_ref" (ptr t_typ @-> returning (ptr t_typ))
let unref =
  foreign "g_mapped_file_unref" (ptr t_typ @-> returning (void))
