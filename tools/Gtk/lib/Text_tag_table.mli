open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_tag_table_new return type object not handled*)
(*Not implemented gtk_text_tag_table_add type object not implemented*)
(*Not implemented gtk_text_tag_table_foreach type callback not implemented*)
val get_size:
  t structure ptr -> int32
(*Not implemented gtk_text_tag_table_lookup return type object not handled*)
(*Not implemented gtk_text_tag_table_remove type object not implemented*)
