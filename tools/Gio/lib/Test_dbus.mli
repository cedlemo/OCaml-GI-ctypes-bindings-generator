open Ctypes

type t
val t_typ : t typ

(*Not implemented g_test_dbus_new return type object not handled*)
val unset:
  unit -> unit
val add_service_dir:
  t structure ptr -> string -> unit
val down:
  t structure ptr -> unit
val get_bus_address:
  t structure ptr -> string option
val get_flags:
  t structure ptr -> Test_dbus_flags.t_list
val stop:
  t structure ptr -> unit
val up:
  t structure ptr -> unit
