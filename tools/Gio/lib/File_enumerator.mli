open Ctypes

type t
val t_typ : t typ

(*Not implemented g_file_enumerator_close type object not implemented*)
(*Not implemented g_file_enumerator_close_async type object not implemented*)
(*Not implemented g_file_enumerator_close_finish type interface not implemented*)
(*Not implemented g_file_enumerator_get_child type object not implemented*)
(*Not implemented g_file_enumerator_get_container return type interface not handled*)
val has_pending:
  t structure ptr -> bool
val is_closed:
  t structure ptr -> bool
(*Not implemented g_file_enumerator_iterate type object not implemented*)
(*Not implemented g_file_enumerator_next_file type object not implemented*)
(*Not implemented g_file_enumerator_next_files_async type object not implemented*)
(*Not implemented g_file_enumerator_next_files_finish type interface not implemented*)
val set_pending:
  t structure ptr -> bool -> unit
