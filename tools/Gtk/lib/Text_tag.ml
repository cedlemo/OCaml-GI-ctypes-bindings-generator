open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_tag_new return type object not handled*)
let changed =
  foreign "gtk_text_tag_changed" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_text_tag_event type object not implemented*)
let get_priority =
  foreign "gtk_text_tag_get_priority" (ptr t_typ @-> returning (int32_t))
let set_priority =
  foreign "gtk_text_tag_set_priority" (ptr t_typ @-> int32_t @-> returning (void))
