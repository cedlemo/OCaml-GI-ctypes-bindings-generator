open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_entry_buffer_new return type object not handled*)
let delete_text =
  foreign "gtk_entry_buffer_delete_text" (ptr t_typ @-> uint32_t @-> int32_t @-> returning (uint32_t))
let emit_deleted_text =
  foreign "gtk_entry_buffer_emit_deleted_text" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let emit_inserted_text =
  foreign "gtk_entry_buffer_emit_inserted_text" (ptr t_typ @-> uint32_t @-> string @-> uint32_t @-> returning (void))
let get_bytes =
  foreign "gtk_entry_buffer_get_bytes" (ptr t_typ @-> returning (uint64_t))
let get_length =
  foreign "gtk_entry_buffer_get_length" (ptr t_typ @-> returning (uint32_t))
let get_max_length =
  foreign "gtk_entry_buffer_get_max_length" (ptr t_typ @-> returning (int32_t))
let get_text =
  foreign "gtk_entry_buffer_get_text" (ptr t_typ @-> returning (string_opt))
let insert_text =
  foreign "gtk_entry_buffer_insert_text" (ptr t_typ @-> uint32_t @-> string @-> int32_t @-> returning (uint32_t))
let set_max_length =
  foreign "gtk_entry_buffer_set_max_length" (ptr t_typ @-> int32_t @-> returning (void))
let set_text =
  foreign "gtk_entry_buffer_set_text" (ptr t_typ @-> string @-> int32_t @-> returning (void))
