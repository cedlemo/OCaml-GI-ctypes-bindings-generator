open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_proxy_new_finish type interface not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus_finish type interface not implemented*)
val create_for_bus_sync :
  Bus_type.t -> DBus_proxy_flags.t_list -> DBus_interface_info.t structure ptr option -> string -> string -> string -> Cancellable.t -> (t, Error.t structure ptr option) result
val create_sync :
  DBus_connection.t -> DBus_proxy_flags.t_list -> DBus_interface_info.t structure ptr option -> string option -> string -> string -> Cancellable.t -> (t, Error.t structure ptr option) result
(*Not implemented g_dbus_proxy_new type callback not implemented*)
(*Not implemented g_dbus_proxy_new_for_bus type callback not implemented*)
(*Not implemented g_dbus_proxy_call type callback not implemented*)
(*Not implemented g_dbus_proxy_call_finish type interface not implemented*)
val call_sync :
  t -> string -> Variant.t structure ptr option -> DBus_call_flags.t_list -> int32 -> Cancellable.t -> (Variant.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_dbus_proxy_call_with_unix_fd_list type callback not implemented*)
(*Not implemented g_dbus_proxy_call_with_unix_fd_list_finish type interface not implemented*)
val call_with_unix_fd_list_sync :
  t -> string -> Variant.t structure ptr option -> DBus_call_flags.t_list -> int32 -> Unix_fdlist.t -> Cancellable.t -> (Variant.t structure ptr option * Unix_fdlist.t, Error.t structure ptr option) result
val get_cached_property :
  t -> string -> Variant.t structure ptr option
(*Not implemented g_dbus_proxy_get_cached_property_names return type C Array type for Types.Array tag not handled*)
val get_connection :
  t -> DBus_connection.t
val get_default_timeout :
  t -> int32
val get_flags :
  t -> DBus_proxy_flags.t_list
val get_interface_info :
  t -> DBus_interface_info.t structure ptr option
val get_interface_name :
  t -> string option
val get_name :
  t -> string option
val get_name_owner :
  t -> string option
val get_object_path :
  t -> string option
val set_cached_property :
  t -> string -> Variant.t structure ptr option -> unit
val set_default_timeout :
  t -> int32 -> unit
val set_interface_info :
  t -> DBus_interface_info.t structure ptr option -> unit
