open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create_sync address flags guid observer cancellable =
  let create_sync_raw =
    foreign "g_dbus_server_new_sync" (string @-> DBus_server_flags.t_list_view @-> string @-> ptr_opt DBus_auth_observer.t_typ @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_sync_raw address flags guid observer cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_client_address =
  foreign "g_dbus_server_get_client_address" (t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_dbus_server_get_flags" (t_typ @-> returning (DBus_server_flags.t_list_view))
let get_guid =
  foreign "g_dbus_server_get_guid" (t_typ @-> returning (string_opt))
let is_active =
  foreign "g_dbus_server_is_active" (t_typ @-> returning (bool))
let start =
  foreign "g_dbus_server_start" (t_typ @-> returning (void))
let stop =
  foreign "g_dbus_server_stop" (t_typ @-> returning (void))
