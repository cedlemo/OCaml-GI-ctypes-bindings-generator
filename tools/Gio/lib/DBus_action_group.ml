open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get =
  foreign "g_dbus_action_group_get" (DBus_connection.t_typ @-> string @-> string @-> returning (t_typ))
