open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_object_proxy_new" (DBus_connection.t_typ @-> string @-> returning (t_typ))
let get_connection =
  foreign "g_dbus_object_proxy_get_connection" (t_typ @-> returning (DBus_connection.t_typ))
