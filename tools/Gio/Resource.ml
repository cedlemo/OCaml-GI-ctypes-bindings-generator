open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Resource"

let create_from_data data =
  let create_from_data_raw =
    foreign "g_resource_new_from_data" (ptr Bytes.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_data_raw data err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let _register =
  foreign "g_resources_register" (ptr t_typ @-> returning (void))
let _unregister =
  foreign "g_resources_unregister" (ptr t_typ @-> returning (void))
(*Not implemented g_resource_enumerate_children return type C Array type for Types.Array tag not handled*)
let get_info self path lookup_flags =
  let get_info_raw =
    foreign "g_resource_get_info" (ptr t_typ @-> string @-> Resource_lookup_flags.t_list_view @-> ptr (uint64_t) @-> ptr (uint32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let size_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let flags_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = get_info_raw self path lookup_flags size_ptr flags_ptr err_ptr_ptr in
  let get_ret_value () =
    let size = !@ size_ptr in
   let flags = !@ flags_ptr in
    (ret, size, flags)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let lookup_data self path lookup_flags =
  let lookup_data_raw =
    foreign "g_resource_lookup_data" (ptr t_typ @-> string @-> Resource_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Bytes.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_data_raw self path lookup_flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let open_stream self path lookup_flags =
  let open_stream_raw =
    foreign "g_resource_open_stream" (ptr t_typ @-> string @-> Resource_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Input_stream.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = open_stream_raw self path lookup_flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let incr_ref =
  foreign "g_resource_ref" (ptr t_typ @-> returning (ptr t_typ))
let unref =
  foreign "g_resource_unref" (ptr t_typ @-> returning (void))
let load filename =
  let load_raw =
    foreign "g_resource_load" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_raw filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
