open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let destroy =
  foreign "gtk_native_dialog_destroy" (t_typ @-> returning (void))
let get_modal =
  foreign "gtk_native_dialog_get_modal" (t_typ @-> returning (bool))
let get_title =
  foreign "gtk_native_dialog_get_title" (t_typ @-> returning (string_opt))
let get_transient_for =
  foreign "gtk_native_dialog_get_transient_for" (t_typ @-> returning (ptr_opt Window.t_typ))
let get_visible =
  foreign "gtk_native_dialog_get_visible" (t_typ @-> returning (bool))
let hide =
  foreign "gtk_native_dialog_hide" (t_typ @-> returning (void))
let run =
  foreign "gtk_native_dialog_run" (t_typ @-> returning (int32_t))
let set_modal =
  foreign "gtk_native_dialog_set_modal" (t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_native_dialog_set_title" (t_typ @-> string @-> returning (void))
let set_transient_for =
  foreign "gtk_native_dialog_set_transient_for" (t_typ @-> ptr_opt Window.t_typ @-> returning (void))
let show =
  foreign "gtk_native_dialog_show" (t_typ @-> returning (void))
