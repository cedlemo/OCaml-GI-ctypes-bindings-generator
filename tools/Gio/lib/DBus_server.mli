open Ctypes

type t
val t_typ : t typ

val create_sync :
  string -> DBus_server_flags.t_list -> string -> DBus_auth_observer.t -> Cancellable.t -> (t, Error.t structure ptr option) result
val get_client_address :
  t -> string option
val get_flags :
  t -> DBus_server_flags.t_list
val get_guid :
  t -> string option
val is_active :
  t -> bool
val start :
  t -> unit
val stop :
  t -> unit
