open Ctypes

type t
val t_typ : t typ

val create :
  Socket_family.t -> Socket_type.t -> Socket_protocol.t -> (t, Error.t structure ptr option) result
val create_from_fd :
  int32 -> (t, Error.t structure ptr option) result
val accept :
  t -> Cancellable.t -> (t, Error.t structure ptr option) result
val bind :
  t -> Socket_address.t -> bool -> (bool, Error.t structure ptr option) result
val check_connect_result :
  t -> (bool, Error.t structure ptr option) result
val close :
  t -> (bool, Error.t structure ptr option) result
val condition_check :
  t -> IOCondition.t_list -> IOCondition.t_list
val condition_timed_wait :
  t -> IOCondition.t_list -> int64 -> Cancellable.t -> (bool, Error.t structure ptr option) result
val condition_wait :
  t -> IOCondition.t_list -> Cancellable.t -> (bool, Error.t structure ptr option) result
val connect :
  t -> Socket_address.t -> Cancellable.t -> (bool, Error.t structure ptr option) result
val connection_factory_create_connection :
  t -> Socket_connection.t
val get_available_bytes :
  t -> int64
val get_blocking :
  t -> bool
val get_broadcast :
  t -> bool
val get_credentials :
  t -> (Credentials.t, Error.t structure ptr option) result
val get_family :
  t -> Socket_family.t
val get_fd :
  t -> int32
val get_keepalive :
  t -> bool
val get_listen_backlog :
  t -> int32
val get_local_address :
  t -> (Socket_address.t, Error.t structure ptr option) result
val get_multicast_loopback :
  t -> bool
val get_multicast_ttl :
  t -> Unsigned.uint32
val get_option :
  t -> int32 -> int32 -> (bool * int32, Error.t structure ptr option) result
val get_protocol :
  t -> Socket_protocol.t
val get_remote_address :
  t -> (Socket_address.t, Error.t structure ptr option) result
val get_socket_type :
  t -> Socket_type.t
val get_timeout :
  t -> Unsigned.uint32
val get_ttl :
  t -> Unsigned.uint32
val is_closed :
  t -> bool
val is_connected :
  t -> bool
val join_multicast_group :
  t -> Inet_address.t -> bool -> string option -> (bool, Error.t structure ptr option) result
val join_multicast_group_ssm :
  t -> Inet_address.t -> Inet_address.t -> string option -> (bool, Error.t structure ptr option) result
val leave_multicast_group :
  t -> Inet_address.t -> bool -> string option -> (bool, Error.t structure ptr option) result
val leave_multicast_group_ssm :
  t -> Inet_address.t -> Inet_address.t -> string option -> (bool, Error.t structure ptr option) result
val listen :
  t -> (bool, Error.t structure ptr option) result
(*Not implemented g_socket_receive type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_from type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_receive_with_blocking type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_message type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_messages type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_to type C Array type for Types.Array tag not implemented*)
(*Not implemented g_socket_send_with_blocking type C Array type for Types.Array tag not implemented*)
val set_blocking :
  t -> bool -> unit
val set_broadcast :
  t -> bool -> unit
val set_keepalive :
  t -> bool -> unit
val set_listen_backlog :
  t -> int32 -> unit
val set_multicast_loopback :
  t -> bool -> unit
val set_multicast_ttl :
  t -> Unsigned.uint32 -> unit
val set_option :
  t -> int32 -> int32 -> int32 -> (bool, Error.t structure ptr option) result
val set_timeout :
  t -> Unsigned.uint32 -> unit
val set_ttl :
  t -> Unsigned.uint32 -> unit
val shutdown :
  t -> bool -> bool -> (bool, Error.t structure ptr option) result
val speaks_ipv4 :
  t -> bool
