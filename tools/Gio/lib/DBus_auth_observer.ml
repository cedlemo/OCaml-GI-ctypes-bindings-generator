open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_dbus_auth_observer_new" (void @-> returning (t_typ))
let allow_mechanism =
  foreign "g_dbus_auth_observer_allow_mechanism" (t_typ @-> string @-> returning (bool))
let authorize_authenticated_peer =
  foreign "g_dbus_auth_observer_authorize_authenticated_peer" (t_typ @-> IOStream.t_typ @-> Credentials.t_typ @-> returning (bool))
