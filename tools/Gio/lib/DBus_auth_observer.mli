open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_auth_observer_new return type object not handled*)
val allow_mechanism:
  t structure ptr -> string -> bool
(*Not implemented g_dbus_auth_observer_authorize_authenticated_peer type object not implemented*)
