open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val get_completion_suffix :
  t -> string -> string option
(*Not implemented g_filename_completer_get_completions return type C Array type for Types.Array tag not handled*)
val set_dirs_only :
  t -> bool -> unit
