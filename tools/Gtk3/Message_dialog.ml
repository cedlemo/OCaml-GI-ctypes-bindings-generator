open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_image =
  foreign "gtk_message_dialog_get_image" (t_typ @-> returning (ptr Widget.t_typ))
let get_message_area =
  foreign "gtk_message_dialog_get_message_area" (t_typ @-> returning (ptr Widget.t_typ))
let set_image =
  foreign "gtk_message_dialog_set_image" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let set_markup =
  foreign "gtk_message_dialog_set_markup" (t_typ @-> string @-> returning (void))
