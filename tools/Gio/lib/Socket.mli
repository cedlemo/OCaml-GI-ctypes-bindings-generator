open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_new return type object not handled*)
(*Not implemented g_socket_new_from_fd return type object not handled*)
(*Not implemented g_socket_accept type object not implemented*)
(*Not implemented g_socket_bind type object not implemented*)
val check_connect_result:
  t structure ptr -> (bool, Error.t structure ptr option) result
val close:
  t structure ptr -> (bool, Error.t structure ptr option) result
val condition_check:
  t structure ptr -> IOCondition.t_list -> IOCondition.t_list
(*Not implemented g_socket_condition_timed_wait type object not implemented*)
(*Not implemented g_socket_condition_wait type object not implemented*)
(*Not implemented g_socket_connect type object not implemented*)
(*Not implemented g_socket_connection_factory_create_connection return type object not handled*)
val get_available_bytes:
  t structure ptr -> int64
val get_blocking:
  t structure ptr -> bool
val get_broadcast:
  t structure ptr -> bool
(*Not implemented g_socket_get_credentials return type object not handled*)
val get_family:
  t structure ptr -> Socket_family.t
val get_fd:
  t structure ptr -> int32
val get_keepalive:
  t structure ptr -> bool
val get_listen_backlog:
  t structure ptr -> int32
(*Not implemented g_socket_get_local_address return type object not handled*)
val get_multicast_loopback:
  t structure ptr -> bool
val get_multicast_ttl:
  t structure ptr -> Unsigned.uint32
val get_option :
  t structure ptr -> int32 -> int32 -> (bool * int32, Error.t structure ptr option) result
val get_protocol:
  t structure ptr -> Socket_protocol.t
(*Not implemented g_socket_get_remote_address return type object not handled*)
val get_socket_type:
  t structure ptr -> Socket_type.t
val get_timeout:
  t structure ptr -> Unsigned.uint32
val get_ttl:
  t structure ptr -> Unsigned.uint32
val is_closed:
  t structure ptr -> bool
val is_connected:
  t structure ptr -> bool
(*Not implemented g_socket_join_multicast_group type object not implemented*)
(*Not implemented g_socket_leave_multicast_group type object not implemented*)
val listen:
  t structure ptr -> (bool, Error.t structure ptr option) result
(*Not implemented g_socket_receive type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_from type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_with_blocking type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_message type object not implemented*)
(*Not implemented g_socket_send_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_to type object not implemented*)
(*Not implemented g_socket_send_with_blocking type C Array type for Types.Array tag not implemented*)
val set_blocking:
  t structure ptr -> bool -> unit
val set_broadcast:
  t structure ptr -> bool -> unit
val set_keepalive:
  t structure ptr -> bool -> unit
val set_listen_backlog:
  t structure ptr -> int32 -> unit
val set_multicast_loopback:
  t structure ptr -> bool -> unit
val set_multicast_ttl:
  t structure ptr -> Unsigned.uint32 -> unit
val set_option:
  t structure ptr -> int32 -> int32 -> int32 -> (bool, Error.t structure ptr option) result
val set_timeout:
  t structure ptr -> Unsigned.uint32 -> unit
val set_ttl:
  t structure ptr -> Unsigned.uint32 -> unit
val shutdown:
  t structure ptr -> bool -> bool -> (bool, Error.t structure ptr option) result
val speaks_ipv4:
  t structure ptr -> bool
