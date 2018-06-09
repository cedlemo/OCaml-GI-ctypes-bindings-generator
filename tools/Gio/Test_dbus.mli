open Ctypes

type t
val t_typ : t typ

val create :
  Test_dbus_flags.t_list -> t
val unset :
  unit -> unit
val add_service_dir :
  t -> string -> unit
val down :
  t -> unit
val get_bus_address :
  t -> string option
val get_flags :
  t -> Test_dbus_flags.t_list
val stop :
  t -> unit
val up :
  t -> unit
