open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_message_dialog_get_image return type object not handled*)
(*Not implemented gtk_message_dialog_get_message_area return type object not handled*)
(*Not implemented gtk_message_dialog_set_image type object not implemented*)
let set_markup =
  foreign "gtk_message_dialog_set_markup" (ptr t_typ @-> string @-> returning (void))
