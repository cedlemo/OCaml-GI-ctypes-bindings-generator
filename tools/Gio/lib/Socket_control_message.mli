open Ctypes

type t
val t_typ : t typ

(*Not implemented g_socket_control_message_deserialize type C Array type for Types.Array tag not implemented*)
val get_level:
  t structure ptr -> int32
val get_msg_type:
  t structure ptr -> int32
val get_size:
  t structure ptr -> Unsigned.uint64
val serialize:
  t structure ptr -> unit ptr -> unit
