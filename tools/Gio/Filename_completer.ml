open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_filename_completer_new" (void @-> returning (ptr t_typ))
let get_completion_suffix =
  foreign "g_filename_completer_get_completion_suffix" (t_typ @-> string @-> returning (string_opt))
(*Not implemented g_filename_completer_get_completions return type C Array type for Types.Array tag not handled*)
let set_dirs_only =
  foreign "g_filename_completer_set_dirs_only" (t_typ @-> bool @-> returning (void))
