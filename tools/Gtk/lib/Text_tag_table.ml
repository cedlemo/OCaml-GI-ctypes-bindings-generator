open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_tag_table_new" (void @-> returning (t_typ))
let add =
  foreign "gtk_text_tag_table_add" (t_typ @-> Text_tag.t_typ @-> returning (bool))
(*Not implemented gtk_text_tag_table_foreach type callback not implemented*)
let get_size =
  foreign "gtk_text_tag_table_get_size" (t_typ @-> returning (int32_t))
let lookup =
  foreign "gtk_text_tag_table_lookup" (t_typ @-> string @-> returning (Text_tag.t_typ))
let remove =
  foreign "gtk_text_tag_table_remove" (t_typ @-> Text_tag.t_typ @-> returning (void))
