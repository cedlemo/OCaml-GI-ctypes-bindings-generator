open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_expander_new" (string_opt @-> returning (Widget.t_typ))
let create_with_mnemonic =
  foreign "gtk_expander_new_with_mnemonic" (string_opt @-> returning (Widget.t_typ))
let get_expanded =
  foreign "gtk_expander_get_expanded" (t_typ @-> returning (bool))
let get_label =
  foreign "gtk_expander_get_label" (t_typ @-> returning (string_opt))
let get_label_fill =
  foreign "gtk_expander_get_label_fill" (t_typ @-> returning (bool))
let get_label_widget =
  foreign "gtk_expander_get_label_widget" (t_typ @-> returning (Widget.t_typ))
let get_resize_toplevel =
  foreign "gtk_expander_get_resize_toplevel" (t_typ @-> returning (bool))
let get_spacing =
  foreign "gtk_expander_get_spacing" (t_typ @-> returning (int32_t))
let get_use_markup =
  foreign "gtk_expander_get_use_markup" (t_typ @-> returning (bool))
let get_use_underline =
  foreign "gtk_expander_get_use_underline" (t_typ @-> returning (bool))
let set_expanded =
  foreign "gtk_expander_set_expanded" (t_typ @-> bool @-> returning (void))
let set_label =
  foreign "gtk_expander_set_label" (t_typ @-> string_opt @-> returning (void))
let set_label_fill =
  foreign "gtk_expander_set_label_fill" (t_typ @-> bool @-> returning (void))
let set_label_widget =
  foreign "gtk_expander_set_label_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_resize_toplevel =
  foreign "gtk_expander_set_resize_toplevel" (t_typ @-> bool @-> returning (void))
let set_spacing =
  foreign "gtk_expander_set_spacing" (t_typ @-> int32_t @-> returning (void))
let set_use_markup =
  foreign "gtk_expander_set_use_markup" (t_typ @-> bool @-> returning (void))
let set_use_underline =
  foreign "gtk_expander_set_use_underline" (t_typ @-> bool @-> returning (void))
