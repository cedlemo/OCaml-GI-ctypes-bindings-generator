open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_test_dbus_new return type object not handled*)
let unset =
  foreign "g_test_dbus_unset" (void @-> returning (void))
let add_service_dir =
  foreign "g_test_dbus_add_service_dir" (ptr t_typ @-> string @-> returning (void))
let down =
  foreign "g_test_dbus_down" (ptr t_typ @-> returning (void))
let get_bus_address =
  foreign "g_test_dbus_get_bus_address" (ptr t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_test_dbus_get_flags" (ptr t_typ @-> returning (Test_dbus_flags.t_list_view))
let stop =
  foreign "g_test_dbus_stop" (ptr t_typ @-> returning (void))
let up =
  foreign "g_test_dbus_up" (ptr t_typ @-> returning (void))
