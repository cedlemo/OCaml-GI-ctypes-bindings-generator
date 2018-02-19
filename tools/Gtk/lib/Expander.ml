open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_expander_new return type object not handled*)
(*Not implemented gtk_expander_new_with_mnemonic return type object not handled*)
let get_expanded =
  foreign "gtk_expander_get_expanded" (ptr t_typ @-> returning (bool))
let get_label =
  foreign "gtk_expander_get_label" (ptr t_typ @-> returning (string_opt))
let get_label_fill =
  foreign "gtk_expander_get_label_fill" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_expander_get_label_widget return type object not handled*)
let get_resize_toplevel =
  foreign "gtk_expander_get_resize_toplevel" (ptr t_typ @-> returning (bool))
let get_spacing =
  foreign "gtk_expander_get_spacing" (ptr t_typ @-> returning (int32_t))
let get_use_markup =
  foreign "gtk_expander_get_use_markup" (ptr t_typ @-> returning (bool))
let get_use_underline =
  foreign "gtk_expander_get_use_underline" (ptr t_typ @-> returning (bool))
let set_expanded =
  foreign "gtk_expander_set_expanded" (ptr t_typ @-> bool @-> returning (void))
let set_label =
  foreign "gtk_expander_set_label" (ptr t_typ @-> string_opt @-> returning (void))
let set_label_fill =
  foreign "gtk_expander_set_label_fill" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_expander_set_label_widget type object not implemented*)
let set_resize_toplevel =
  foreign "gtk_expander_set_resize_toplevel" (ptr t_typ @-> bool @-> returning (void))
let set_spacing =
  foreign "gtk_expander_set_spacing" (ptr t_typ @-> int32_t @-> returning (void))
let set_use_markup =
  foreign "gtk_expander_set_use_markup" (ptr t_typ @-> bool @-> returning (void))
let set_use_underline =
  foreign "gtk_expander_set_use_underline" (ptr t_typ @-> bool @-> returning (void))
