open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_entry_buffer_new return type object not handled*)
val delete_text:
  t structure ptr -> Unsigned.uint32 -> int32 -> Unsigned.uint32
val emit_deleted_text:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val emit_inserted_text:
  t structure ptr -> Unsigned.uint32 -> string -> Unsigned.uint32 -> unit
val get_bytes:
  t structure ptr -> Unsigned.uint64
val get_length:
  t structure ptr -> Unsigned.uint32
val get_max_length:
  t structure ptr -> int32
val get_text:
  t structure ptr -> string option
val insert_text:
  t structure ptr -> Unsigned.uint32 -> string -> int32 -> Unsigned.uint32
val set_max_length:
  t structure ptr -> int32 -> unit
val set_text:
  t structure ptr -> string -> int32 -> unit
