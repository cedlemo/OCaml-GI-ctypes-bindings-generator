open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_statusbar_new return type object not handled*)
let get_context_id =
  foreign "gtk_statusbar_get_context_id" (ptr t_typ @-> string @-> returning (uint32_t))
(*Not implemented gtk_statusbar_get_message_area return type object not handled*)
let pop =
  foreign "gtk_statusbar_pop" (ptr t_typ @-> uint32_t @-> returning (void))
let push =
  foreign "gtk_statusbar_push" (ptr t_typ @-> uint32_t @-> string @-> returning (uint32_t))
let remove =
  foreign "gtk_statusbar_remove" (ptr t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let remove_all =
  foreign "gtk_statusbar_remove_all" (ptr t_typ @-> uint32_t @-> returning (void))
