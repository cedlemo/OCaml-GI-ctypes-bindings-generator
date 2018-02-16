open Ctypes

type t
val t_typ : t typ

(*Not implemented g_themed_icon_new return type object not handled*)
(*Not implemented g_themed_icon_new_from_names type C Array type for Types.Array tag not implemented*)
(*Not implemented g_themed_icon_new_with_default_fallbacks return type object not handled*)
val append_name:
  t structure ptr -> string -> unit
(*Not implemented g_themed_icon_get_names return type C Array type for Types.Array tag not handled*)
val prepend_name:
  t structure ptr -> string -> unit
