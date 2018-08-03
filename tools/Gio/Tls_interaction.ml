open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let ask_password self password cancellable =
  let ask_password_raw =
    foreign "g_tls_interaction_ask_password" (t_typ @-> ptr Tls_password.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Tls_interaction_result.t_view))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = ask_password_raw self password cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_interaction_ask_password_async type callback not implemented*)
(*Not implemented g_tls_interaction_ask_password_finish type interface not implemented*)
let invoke_ask_password self password cancellable =
  let invoke_ask_password_raw =
    foreign "g_tls_interaction_invoke_ask_password" (t_typ @-> ptr Tls_password.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Tls_interaction_result.t_view))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = invoke_ask_password_raw self password cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let invoke_request_certificate self connection flags cancellable =
  let invoke_request_certificate_raw =
    foreign "g_tls_interaction_invoke_request_certificate" (t_typ @-> ptr Tls_connection.t_typ @-> Tls_certificate_request_flags.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Tls_interaction_result.t_view))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = invoke_request_certificate_raw self connection flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let request_certificate self connection flags cancellable =
  let request_certificate_raw =
    foreign "g_tls_interaction_request_certificate" (t_typ @-> ptr Tls_connection.t_typ @-> Tls_certificate_request_flags.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (Tls_interaction_result.t_view))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = request_certificate_raw self connection flags cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_tls_interaction_request_certificate_async type callback not implemented*)
(*Not implemented g_tls_interaction_request_certificate_finish type interface not implemented*)
