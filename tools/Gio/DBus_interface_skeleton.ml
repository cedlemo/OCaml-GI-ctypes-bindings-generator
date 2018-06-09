open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let export self connection object_path =
  let export_raw =
    foreign "g_dbus_interface_skeleton_export" (t_typ @-> DBus_connection.t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = export_raw self connection object_path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let flush =
  foreign "g_dbus_interface_skeleton_flush" (t_typ @-> returning (void))
let get_connection =
  foreign "g_dbus_interface_skeleton_get_connection" (t_typ @-> returning (DBus_connection.t_typ))
let get_connections =
  foreign "g_dbus_interface_skeleton_get_connections" (t_typ @-> returning (ptr List.t_typ))
let get_flags =
  foreign "g_dbus_interface_skeleton_get_flags" (t_typ @-> returning (DBus_interface_skeleton_flags.t_list_view))
let get_info =
  foreign "g_dbus_interface_skeleton_get_info" (t_typ @-> returning (ptr DBus_interface_info.t_typ))
let get_object_path =
  foreign "g_dbus_interface_skeleton_get_object_path" (t_typ @-> returning (string_opt))
let get_properties =
  foreign "g_dbus_interface_skeleton_get_properties" (t_typ @-> returning (ptr Variant.t_typ))
let has_connection =
  foreign "g_dbus_interface_skeleton_has_connection" (t_typ @-> DBus_connection.t_typ @-> returning (bool))
let set_flags =
  foreign "g_dbus_interface_skeleton_set_flags" (t_typ @-> DBus_interface_skeleton_flags.t_list_view @-> returning (void))
let unexport =
  foreign "g_dbus_interface_skeleton_unexport" (t_typ @-> returning (void))
let unexport_from_connection =
  foreign "g_dbus_interface_skeleton_unexport_from_connection" (t_typ @-> DBus_connection.t_typ @-> returning (void))
