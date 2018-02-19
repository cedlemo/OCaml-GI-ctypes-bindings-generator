open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_mark_new return type object not handled*)
(*Not implemented gtk_text_mark_get_buffer return type object not handled*)
let get_deleted =
  foreign "gtk_text_mark_get_deleted" (ptr t_typ @-> returning (bool))
let get_left_gravity =
  foreign "gtk_text_mark_get_left_gravity" (ptr t_typ @-> returning (bool))
let get_name =
  foreign "gtk_text_mark_get_name" (ptr t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_text_mark_get_visible" (ptr t_typ @-> returning (bool))
let set_visible =
  foreign "gtk_text_mark_set_visible" (ptr t_typ @-> bool @-> returning (void))
