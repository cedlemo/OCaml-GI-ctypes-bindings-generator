open Ctypes

type t
val t_typ : t typ

(*Not implemented g_dbus_connection_new_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_finish type interface not implemented*)
(*Not implemented g_dbus_connection_new_for_address_sync type object not implemented*)
(*Not implemented g_dbus_connection_new_sync type object not implemented*)
(*Not implemented g_dbus_connection_new type object not implemented*)
(*Not implemented g_dbus_connection_new_for_address type object not implemented*)
(*Not implemented g_dbus_connection_add_filter type callback not implemented*)
(*Not implemented g_dbus_connection_call type object not implemented*)
(*Not implemented g_dbus_connection_call_finish type interface not implemented*)
(*Not implemented g_dbus_connection_call_sync type object not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list type object not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_finish type interface not implemented*)
(*Not implemented g_dbus_connection_call_with_unix_fd_list_sync type object not implemented*)
(*Not implemented g_dbus_connection_close type object not implemented*)
(*Not implemented g_dbus_connection_close_finish type interface not implemented*)
(*Not implemented g_dbus_connection_close_sync type object not implemented*)
val emit_signal:
  t structure ptr -> string option -> string -> string -> string -> Variant.t structure ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_export_action_group type interface not implemented*)
(*Not implemented g_dbus_connection_export_menu_model type object not implemented*)
(*Not implemented g_dbus_connection_flush type object not implemented*)
(*Not implemented g_dbus_connection_flush_finish type interface not implemented*)
(*Not implemented g_dbus_connection_flush_sync type object not implemented*)
val get_capabilities:
  t structure ptr -> DBus_capability_flags.t_list
val get_exit_on_close:
  t structure ptr -> bool
val get_guid:
  t structure ptr -> string option
val get_last_serial:
  t structure ptr -> Unsigned.uint32
(*Not implemented g_dbus_connection_get_peer_credentials return type object not handled*)
(*Not implemented g_dbus_connection_get_stream return type object not handled*)
val get_unique_name:
  t structure ptr -> string option
val is_closed:
  t structure ptr -> bool
val register_object:
  t structure ptr -> string -> DBus_interface_info.t structure ptr -> Closure.t structure ptr option -> Closure.t structure ptr option -> Closure.t structure ptr option -> (Unsigned.uint32, Error.t structure ptr option) result
(*Not implemented g_dbus_connection_register_subtree type callback not implemented*)
val remove_filter:
  t structure ptr -> Unsigned.uint32 -> unit
(*Not implemented g_dbus_connection_send_message type object not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply type object not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_finish type interface not implemented*)
(*Not implemented g_dbus_connection_send_message_with_reply_sync type object not implemented*)
val set_exit_on_close:
  t structure ptr -> bool -> unit
(*Not implemented g_dbus_connection_signal_subscribe type callback not implemented*)
val signal_unsubscribe:
  t structure ptr -> Unsigned.uint32 -> unit
val start_message_processing:
  t structure ptr -> unit
val unexport_action_group:
  t structure ptr -> Unsigned.uint32 -> unit
val unexport_menu_model:
  t structure ptr -> Unsigned.uint32 -> unit
val unregister_object:
  t structure ptr -> Unsigned.uint32 -> bool
val unregister_subtree:
  t structure ptr -> Unsigned.uint32 -> bool
