open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_test_dbus_new" (Test_dbus_flags.t_list_view @-> returning (ptr t_typ))
let unset =
  foreign "g_test_dbus_unset" (void @-> returning (void))
let add_service_dir =
  foreign "g_test_dbus_add_service_dir" (t_typ @-> string @-> returning (void))
let down =
  foreign "g_test_dbus_down" (t_typ @-> returning (void))
let get_bus_address =
  foreign "g_test_dbus_get_bus_address" (t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_test_dbus_get_flags" (t_typ @-> returning (Test_dbus_flags.t_list_view))
let stop =
  foreign "g_test_dbus_stop" (t_typ @-> returning (void))
let up =
  foreign "g_test_dbus_up" (t_typ @-> returning (void))
