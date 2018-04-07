open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_themed_icon_new" (string @-> returning (t_typ))
(*Not implemented g_themed_icon_new_from_names type C Array type for Types.Array tag not implemented*)
let create_with_default_fallbacks =
  foreign "g_themed_icon_new_with_default_fallbacks" (string @-> returning (t_typ))
let append_name =
  foreign "g_themed_icon_append_name" (t_typ @-> string @-> returning (void))
(*Not implemented g_themed_icon_get_names return type C Array type for Types.Array tag not handled*)
let prepend_name =
  foreign "g_themed_icon_prepend_name" (t_typ @-> string @-> returning (void))
