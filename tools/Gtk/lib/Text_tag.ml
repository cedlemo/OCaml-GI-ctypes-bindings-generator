open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_tag_new" (string_opt @-> returning (t_typ))
let changed =
  foreign "gtk_text_tag_changed" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_text_tag_event type union not implemented*)
let get_priority =
  foreign "gtk_text_tag_get_priority" (t_typ @-> returning (int32_t))
let set_priority =
  foreign "gtk_text_tag_set_priority" (t_typ @-> int32_t @-> returning (void))
