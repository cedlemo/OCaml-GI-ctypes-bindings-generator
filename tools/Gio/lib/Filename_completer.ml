open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_filename_completer_new return type object not handled*)
let get_completion_suffix =
  foreign "g_filename_completer_get_completion_suffix" (ptr t_typ @-> string @-> returning (string_opt))
(*Not implemented g_filename_completer_get_completions return type C Array type for Types.Array tag not handled*)
let set_dirs_only =
  foreign "g_filename_completer_set_dirs_only" (ptr t_typ @-> bool @-> returning (void))
