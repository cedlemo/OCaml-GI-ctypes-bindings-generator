open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_check_button_new" (void @-> returning (ptr Widget.t_typ))
let create_with_label =
  foreign "gtk_check_button_new_with_label" (string @-> returning (ptr Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_check_button_new_with_mnemonic" (string @-> returning (ptr Widget.t_typ))
