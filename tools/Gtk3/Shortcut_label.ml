open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_shortcut_label_new" (string @-> returning (Widget.t_typ))
let get_accelerator =
  foreign "gtk_shortcut_label_get_accelerator" (t_typ @-> returning (string_opt))
let get_disabled_text =
  foreign "gtk_shortcut_label_get_disabled_text" (t_typ @-> returning (string_opt))
let set_accelerator =
  foreign "gtk_shortcut_label_set_accelerator" (t_typ @-> string @-> returning (void))
let set_disabled_text =
  foreign "gtk_shortcut_label_set_disabled_text" (t_typ @-> string @-> returning (void))
