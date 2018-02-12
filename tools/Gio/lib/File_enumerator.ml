open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_file_enumerator_close type object not implemented*)
(*Not implemented g_file_enumerator_close_async type object not implemented*)
(*Not implemented g_file_enumerator_close_finish type interface not implemented*)
(*Not implemented g_file_enumerator_get_child type object not implemented*)
(*Not implemented g_file_enumerator_get_container return type interface not handled*)
let has_pending =
  foreign "g_file_enumerator_has_pending" (ptr t_typ @-> returning (bool))
let is_closed =
  foreign "g_file_enumerator_is_closed" (ptr t_typ @-> returning (bool))
(*Not implemented g_file_enumerator_iterate type object not implemented*)
(*Not implemented g_file_enumerator_next_file type object not implemented*)
(*Not implemented g_file_enumerator_next_files_async type object not implemented*)
(*Not implemented g_file_enumerator_next_files_finish type interface not implemented*)
let set_pending =
  foreign "g_file_enumerator_set_pending" (ptr t_typ @-> bool @-> returning (void))
