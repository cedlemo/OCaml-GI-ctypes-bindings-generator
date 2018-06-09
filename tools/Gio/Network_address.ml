open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_network_address_new" (string @-> uint16_t @-> returning (t_typ))
let create_loopback =
  foreign "g_network_address_new_loopback" (uint16_t @-> returning (t_typ))
let parse host_and_port default_port =
  let parse_raw =
    foreign "g_network_address_parse" (string @-> uint16_t @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = parse_raw host_and_port default_port err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let parse_uri uri default_port =
  let parse_uri_raw =
    foreign "g_network_address_parse_uri" (string @-> uint16_t @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = parse_uri_raw uri default_port err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_hostname =
  foreign "g_network_address_get_hostname" (t_typ @-> returning (string_opt))
let get_port =
  foreign "g_network_address_get_port" (t_typ @-> returning (uint16_t))
let get_scheme =
  foreign "g_network_address_get_scheme" (t_typ @-> returning (string_opt))
