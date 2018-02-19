open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let destroy =
  foreign "gtk_native_dialog_destroy" (ptr t_typ @-> returning (void))
let get_modal =
  foreign "gtk_native_dialog_get_modal" (ptr t_typ @-> returning (bool))
let get_title =
  foreign "gtk_native_dialog_get_title" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_native_dialog_get_transient_for return type object not handled*)
let get_visible =
  foreign "gtk_native_dialog_get_visible" (ptr t_typ @-> returning (bool))
let hide =
  foreign "gtk_native_dialog_hide" (ptr t_typ @-> returning (void))
let run =
  foreign "gtk_native_dialog_run" (ptr t_typ @-> returning (int32_t))
let set_modal =
  foreign "gtk_native_dialog_set_modal" (ptr t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_native_dialog_set_title" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_native_dialog_set_transient_for type object not implemented*)
let show =
  foreign "gtk_native_dialog_show" (ptr t_typ @-> returning (void))
