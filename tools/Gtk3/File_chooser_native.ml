open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_file_chooser_native_new" (string_opt @-> ptr_opt Window.t_typ @-> File_chooser_action.t_view @-> string_opt @-> string_opt @-> returning (ptr t_typ))
let get_accept_label =
  foreign "gtk_file_chooser_native_get_accept_label" (t_typ @-> returning (string_opt))
let get_cancel_label =
  foreign "gtk_file_chooser_native_get_cancel_label" (t_typ @-> returning (string_opt))
let set_accept_label =
  foreign "gtk_file_chooser_native_set_accept_label" (t_typ @-> string_opt @-> returning (void))
let set_cancel_label =
  foreign "gtk_file_chooser_native_set_cancel_label" (t_typ @-> string_opt @-> returning (void))
