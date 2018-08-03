open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_entry_buffer_new" (string_opt @-> int32_t @-> returning (ptr t_typ))
let delete_text =
  foreign "gtk_entry_buffer_delete_text" (t_typ @-> uint32_t @-> int32_t @-> returning (uint32_t))
let emit_deleted_text =
  foreign "gtk_entry_buffer_emit_deleted_text" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let emit_inserted_text =
  foreign "gtk_entry_buffer_emit_inserted_text" (t_typ @-> uint32_t @-> string @-> uint32_t @-> returning (void))
let get_bytes =
  foreign "gtk_entry_buffer_get_bytes" (t_typ @-> returning (uint64_t))
let get_length =
  foreign "gtk_entry_buffer_get_length" (t_typ @-> returning (uint32_t))
let get_max_length =
  foreign "gtk_entry_buffer_get_max_length" (t_typ @-> returning (int32_t))
let get_text =
  foreign "gtk_entry_buffer_get_text" (t_typ @-> returning (string_opt))
let insert_text =
  foreign "gtk_entry_buffer_insert_text" (t_typ @-> uint32_t @-> string @-> int32_t @-> returning (uint32_t))
let set_max_length =
  foreign "gtk_entry_buffer_set_max_length" (t_typ @-> int32_t @-> returning (void))
let set_text =
  foreign "gtk_entry_buffer_set_text" (t_typ @-> string @-> int32_t @-> returning (void))
