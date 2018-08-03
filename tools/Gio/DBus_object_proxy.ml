open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_object_proxy_new" (ptr DBus_connection.t_typ @-> string @-> returning (ptr t_typ))
let get_connection =
  foreign "g_dbus_object_proxy_get_connection" (t_typ @-> returning (ptr DBus_connection.t_typ))
