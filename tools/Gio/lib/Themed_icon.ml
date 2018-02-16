open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_themed_icon_new return type object not handled*)
(*Not implemented g_themed_icon_new_from_names type C Array type for Types.Array tag not implemented*)
(*Not implemented g_themed_icon_new_with_default_fallbacks return type object not handled*)
let append_name =
  foreign "g_themed_icon_append_name" (ptr t_typ @-> string @-> returning (void))
(*Not implemented g_themed_icon_get_names return type C Array type for Types.Array tag not handled*)
let prepend_name =
  foreign "g_themed_icon_prepend_name" (ptr t_typ @-> string @-> returning (void))
