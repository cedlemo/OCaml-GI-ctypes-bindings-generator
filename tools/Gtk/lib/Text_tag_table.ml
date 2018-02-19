open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_tag_table_new return type object not handled*)
(*Not implemented gtk_text_tag_table_add type object not implemented*)
(*Not implemented gtk_text_tag_table_foreach type callback not implemented*)
let get_size =
  foreign "gtk_text_tag_table_get_size" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_tag_table_lookup return type object not handled*)
(*Not implemented gtk_text_tag_table_remove type object not implemented*)
