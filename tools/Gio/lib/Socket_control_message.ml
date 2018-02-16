open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_socket_control_message_deserialize type C Array type for Types.Array tag not implemented*)
let get_level =
  foreign "g_socket_control_message_get_level" (ptr t_typ @-> returning (int32_t))
let get_msg_type =
  foreign "g_socket_control_message_get_msg_type" (ptr t_typ @-> returning (int32_t))
let get_size =
  foreign "g_socket_control_message_get_size" (ptr t_typ @-> returning (uint64_t))
let serialize =
  foreign "g_socket_control_message_serialize" (ptr t_typ @-> ptr void @-> returning (void))
