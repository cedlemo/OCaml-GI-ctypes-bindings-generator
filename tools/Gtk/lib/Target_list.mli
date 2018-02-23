open Ctypes

type t
val t_typ : t structure typ

(*Not implemented gtk_target_list_new type C Array type for Types.Array tag not implemented*)
val add:
  t structure -> Atom.t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
val add_image_targets:
  t structure -> Unsigned.uint32 -> bool -> unit
val add_rich_text_targets:
  t structure -> Unsigned.uint32 -> bool -> Text_buffer.t -> unit
(*Not implemented gtk_target_list_add_table type C Array type for Types.Array tag not implemented*)
val add_text_targets:
  t structure -> Unsigned.uint32 -> unit
val add_uri_targets:
  t structure -> Unsigned.uint32 -> unit
val find :
  t structure -> Atom.t structure ptr -> (bool * Unsigned.uint32)
val incr_ref:
  t structure -> t structure ptr
val remove:
  t structure -> Atom.t structure ptr -> unit
val unref:
  t structure -> unit
