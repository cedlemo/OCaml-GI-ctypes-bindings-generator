open Ctypes

type t
val t_typ : t typ

(*Not implemented g_filename_completer_new return type object not handled*)
val get_completion_suffix:
  t structure ptr -> string -> string option
(*Not implemented g_filename_completer_get_completions return type C Array type for Types.Array tag not handled*)
val set_dirs_only:
  t structure ptr -> bool -> unit
