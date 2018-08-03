open Ctypes

type t
val t_typ : t typ

val close :
  t -> Cancellable.t ptr option -> (bool, Error.t structure ptr option) result
(*Not implemented g_file_enumerator_close_async type callback not implemented*)
(*Not implemented g_file_enumerator_close_finish type interface not implemented*)
(*Not implemented g_file_enumerator_get_child return type interface not handled*)
(*Not implemented g_file_enumerator_get_container return type interface not handled*)
val has_pending :
  t -> bool
val is_closed :
  t -> bool
(*Not implemented g_file_enumerator_iterate type interface not implemented*)
val next_file :
  t -> Cancellable.t ptr option -> (File_info.t ptr option, Error.t structure ptr option) result
(*Not implemented g_file_enumerator_next_files_async type callback not implemented*)
(*Not implemented g_file_enumerator_next_files_finish type interface not implemented*)
val set_pending :
  t -> bool -> unit
