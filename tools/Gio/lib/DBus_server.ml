open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_server_new_sync type object not implemented*)
let get_client_address =
  foreign "g_dbus_server_get_client_address" (ptr t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_dbus_server_get_flags" (ptr t_typ @-> returning (DBus_server_flags.t_list_view))
let get_guid =
  foreign "g_dbus_server_get_guid" (ptr t_typ @-> returning (string_opt))
let is_active =
  foreign "g_dbus_server_is_active" (ptr t_typ @-> returning (bool))
let start =
  foreign "g_dbus_server_start" (ptr t_typ @-> returning (void))
let stop =
  foreign "g_dbus_server_stop" (ptr t_typ @-> returning (void))
