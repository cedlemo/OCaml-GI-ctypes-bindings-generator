open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_mark_new" (string_opt @-> bool @-> returning (ptr t_typ))
let get_buffer =
  foreign "gtk_text_mark_get_buffer" (t_typ @-> returning (ptr Text_buffer.t_typ))
let get_deleted =
  foreign "gtk_text_mark_get_deleted" (t_typ @-> returning (bool))
let get_left_gravity =
  foreign "gtk_text_mark_get_left_gravity" (t_typ @-> returning (bool))
let get_name =
  foreign "gtk_text_mark_get_name" (t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_text_mark_get_visible" (t_typ @-> returning (bool))
let set_visible =
  foreign "gtk_text_mark_set_visible" (t_typ @-> bool @-> returning (void))
