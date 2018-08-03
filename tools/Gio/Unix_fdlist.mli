open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
(*Not implemented g_unix_fd_list_new_from_array type C Array type for Types.Array tag not implemented*)
val append :
  t -> int32 -> (int32, Error.t structure ptr option) result
val get :
  t -> int32 -> (int32, Error.t structure ptr option) result
val get_length :
  t -> int32
(*Not implemented g_unix_fd_list_peek_fds return type C Array type for Types.Array tag not handled*)
(*Not implemented g_unix_fd_list_steal_fds return type C Array type for Types.Array tag not handled*)
