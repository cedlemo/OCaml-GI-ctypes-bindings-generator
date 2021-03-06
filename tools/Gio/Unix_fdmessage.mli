open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Socket_control_message.t ptr
val create_with_fd_list :
  Unix_fdlist.t ptr -> Socket_control_message.t ptr
val append_fd :
  t -> int32 -> (bool, Error.t structure ptr option) result
val get_fd_list :
  t -> Unix_fdlist.t ptr
(*Not implemented g_unix_fd_message_steal_fds return type C Array type for Types.Array tag not handled*)
