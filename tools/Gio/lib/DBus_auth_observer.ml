open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_dbus_auth_observer_new return type object not handled*)
let allow_mechanism =
  foreign "g_dbus_auth_observer_allow_mechanism" (ptr t_typ @-> string @-> returning (bool))
(*Not implemented g_dbus_auth_observer_authorize_authenticated_peer type object not implemented*)
