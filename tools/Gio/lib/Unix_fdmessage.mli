open Ctypes

type t
val t_typ : t typ

(*Not implemented g_unix_fd_message_new return type object not handled*)
(*Not implemented g_unix_fd_message_new_with_fd_list type object not implemented*)
val append_fd:
  t structure ptr -> int32 -> (bool, Error.t structure ptr option) result
(*Not implemented g_unix_fd_message_get_fd_list return type object not handled*)
(*Not implemented g_unix_fd_message_steal_fds return type C Array type for Types.Array tag not handled*)
