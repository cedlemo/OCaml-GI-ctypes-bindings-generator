open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_server_new_sync type object not implemented*)
val get_client_address:
  t structure ptr -> string option
val get_flags:
  t structure ptr -> DBus_server_flags.t_list
val get_guid:
  t structure ptr -> string option
val is_active:
  t structure ptr -> bool
val start:
  t structure ptr -> unit
val stop:
  t structure ptr -> unit
