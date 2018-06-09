open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_control_message_deserialize type C Array type for Types.Array tag not implemented*)
val get_level :
  t -> int32
val get_msg_type :
  t -> int32
val get_size :
  t -> Unsigned.uint64
val serialize :
  t -> unit ptr -> unit
