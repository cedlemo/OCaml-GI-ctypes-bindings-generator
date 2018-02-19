open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_file_chooser_native_new type object not implemented*)
let get_accept_label =
  foreign "gtk_file_chooser_native_get_accept_label" (ptr t_typ @-> returning (string_opt))
let get_cancel_label =
  foreign "gtk_file_chooser_native_get_cancel_label" (ptr t_typ @-> returning (string_opt))
let set_accept_label =
  foreign "gtk_file_chooser_native_set_accept_label" (ptr t_typ @-> string_opt @-> returning (void))
let set_cancel_label =
  foreign "gtk_file_chooser_native_set_cancel_label" (ptr t_typ @-> string_opt @-> returning (void))
