open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_statusbar_new" (void @-> returning (ptr Widget.t_typ))
let get_context_id =
  foreign "gtk_statusbar_get_context_id" (t_typ @-> string @-> returning (uint32_t))
let get_message_area =
  foreign "gtk_statusbar_get_message_area" (t_typ @-> returning (ptr Box.t_typ))
let pop =
  foreign "gtk_statusbar_pop" (t_typ @-> uint32_t @-> returning (void))
let push =
  foreign "gtk_statusbar_push" (t_typ @-> uint32_t @-> string @-> returning (uint32_t))
let remove =
  foreign "gtk_statusbar_remove" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let remove_all =
  foreign "gtk_statusbar_remove_all" (t_typ @-> uint32_t @-> returning (void))
