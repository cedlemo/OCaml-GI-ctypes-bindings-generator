open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_connection_new_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_finish type interface not implemented*)
val create_for_address_sync :
  string -> DBus_connection_flags.t_list -> DBus_auth_observer.t -> Cancellable.t -> (t, Error.t structure ptr option) result
val create_sync :
  IOStream.t -> string option -> DBus_connection_flags.t_list -> DBus_auth_observer.t -> Cancellable.t -> (t, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_new type callback not implemented*)
(*Not implemented g_dbus_connection_new_for_address type callback not implemented*)
(*Not implemented g_dbus_connection_add_filter type callback not implemented*)
(*Not implemented g_dbus_connection_call type callback not implemented*)
(*Not implemented g_dbus_connection_call_finish type interface not implemented*)
val call_sync :
  t -> string option -> string -> string -> string -> Variant.t structure ptr option -> Variant_type.t structure ptr option -> DBus_call_flags.t_list -> int32 -> Cancellable.t -> (Variant.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_call_with_unix_fd_list type callback not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_finish type interface not implemented*)
val call_with_unix_fd_list_sync :
  t -> string option -> string -> string -> string -> Variant.t structure ptr option -> Variant_type.t structure ptr option -> DBus_call_flags.t_list -> int32 -> Unix_fdlist.t -> Cancellable.t -> (Variant.t structure ptr option * Unix_fdlist.t, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_close type callback not implemented*)
(*Not implemented g_dbus_connection_close_finish type interface not implemented*)
val close_sync :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
val emit_signal :
  t -> string option -> string -> string -> string -> Variant.t structure ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_export_action_group type interface not implemented*)
val export_menu_model :
  t -> string -> Menu_model.t -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_flush type callback not implemented*)
(*Not implemented g_dbus_connection_flush_finish type interface not implemented*)
val flush_sync :
  t -> Cancellable.t -> (bool, Error.t structure ptr option) result
val get_capabilities :
  t -> DBus_capability_flags.t_list
val get_exit_on_close :
  t -> bool
val get_guid :
  t -> string option
val get_last_serial :
  t -> Unsigned.uint32
val get_peer_credentials :
  t -> Credentials.t
val get_stream :
  t -> IOStream.t
val get_unique_name :
  t -> string option
val is_closed :
  t -> bool
val register_object :
  t -> string -> DBus_interface_info.t structure ptr -> Closure.t structure ptr option -> Closure.t structure ptr option -> Closure.t structure ptr option -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_register_subtree type callback not implemented*)
val remove_filter :
  t -> Unsigned.uint32 -> unit
val send_message :
  t -> DBus_message.t -> DBus_send_message_flags.t_list -> (bool * Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_send_message_with_reply type callback not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_finish type interface not implemented*)
val send_message_with_reply_sync :
  t -> DBus_message.t -> DBus_send_message_flags.t_list -> int32 -> Cancellable.t -> (DBus_message.t * Unsigned.uint32, Error.t structure ptr option) result
val set_exit_on_close :
  t -> bool -> unit
(*Not implemented g_dbus_connection_signal_subscribe type callback not implemented*)
val signal_unsubscribe :
  t -> Unsigned.uint32 -> unit
val start_message_processing :
  t -> unit
val unexport_action_group :
  t -> Unsigned.uint32 -> unit
val unexport_menu_model :
  t -> Unsigned.uint32 -> unit
val unregister_object :
  t -> Unsigned.uint32 -> bool
val unregister_subtree :
  t -> Unsigned.uint32 -> bool
