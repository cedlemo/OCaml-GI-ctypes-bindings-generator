open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_default =
  foreign "g_resolver_get_default" (void @-> returning (t_typ))
let lookup_by_address self address cancellable =
  let lookup_by_address_raw =
    foreign "g_resolver_lookup_by_address" (t_typ @-> Inet_address.t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_by_address_raw self address cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_resolver_lookup_by_address_async type callback not implemented*)
(*Not implemented g_resolver_lookup_by_address_finish type interface not implemented*)
let lookup_by_name self hostname cancellable =
  let lookup_by_name_raw =
    foreign "g_resolver_lookup_by_name" (t_typ @-> string @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_by_name_raw self hostname cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_resolver_lookup_by_name_async type callback not implemented*)
(*Not implemented g_resolver_lookup_by_name_finish type interface not implemented*)
let lookup_records self rrname record_type cancellable =
  let lookup_records_raw =
    foreign "g_resolver_lookup_records" (t_typ @-> string @-> Resolver_record_type.t_view @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_records_raw self rrname record_type cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_resolver_lookup_records_async type callback not implemented*)
(*Not implemented g_resolver_lookup_records_finish type interface not implemented*)
let lookup_service self service protocol domain cancellable =
  let lookup_service_raw =
    foreign "g_resolver_lookup_service" (t_typ @-> string @-> string @-> string @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt List.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = lookup_service_raw self service protocol domain cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_resolver_lookup_service_async type callback not implemented*)
(*Not implemented g_resolver_lookup_service_finish type interface not implemented*)
let set_default =
  foreign "g_resolver_set_default" (t_typ @-> returning (void))
