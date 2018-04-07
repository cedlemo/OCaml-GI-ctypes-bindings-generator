open Ctypes

type t
val t_typ : t typ

val create :
  string -> t
(*Not implemented g_themed_icon_new_from_names type C Array type for Types.Array tag not implemented*)
val create_with_default_fallbacks :
  string -> t
val append_name :
  t -> string -> unit
(*Not implemented g_themed_icon_get_names return type C Array type for Types.Array tag not handled*)
val prepend_name :
  t -> string -> unit
