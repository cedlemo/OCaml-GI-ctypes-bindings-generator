open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_radio_button_new" (ptr_opt SList.t_typ @-> returning (Widget.t_typ))
let create_from_widget =
  foreign "gtk_radio_button_new_from_widget" (t_typ @-> returning (Widget.t_typ))
let create_with_label =
  foreign "gtk_radio_button_new_with_label" (ptr_opt SList.t_typ @-> string @-> returning (Widget.t_typ))
let create_with_label_from_widget =
  foreign "gtk_radio_button_new_with_label_from_widget" (t_typ @-> string @-> returning (Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_radio_button_new_with_mnemonic" (ptr_opt SList.t_typ @-> string @-> returning (Widget.t_typ))
let create_with_mnemonic_from_widget =
  foreign "gtk_radio_button_new_with_mnemonic_from_widget" (t_typ @-> string @-> returning (Widget.t_typ))
let get_group =
  foreign "gtk_radio_button_get_group" (t_typ @-> returning (ptr SList.t_typ))
let join_group =
  foreign "gtk_radio_button_join_group" (t_typ @-> t_typ @-> returning (void))
let set_group =
  foreign "gtk_radio_button_set_group" (t_typ @-> ptr_opt SList.t_typ @-> returning (void))
