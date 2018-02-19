open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_toolbar_new return type object not handled*)
let get_drop_index =
  foreign "gtk_toolbar_get_drop_index" (ptr t_typ @-> int32_t @-> int32_t @-> returning (int32_t))
let get_icon_size =
  foreign "gtk_toolbar_get_icon_size" (ptr t_typ @-> returning (Icon_size.t_view))
(*Not implemented gtk_toolbar_get_item_index type object not implemented*)
let get_n_items =
  foreign "gtk_toolbar_get_n_items" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_toolbar_get_nth_item return type object not handled*)
let get_relief_style =
  foreign "gtk_toolbar_get_relief_style" (ptr t_typ @-> returning (Relief_style.t_view))
let get_show_arrow =
  foreign "gtk_toolbar_get_show_arrow" (ptr t_typ @-> returning (bool))
let get_style =
  foreign "gtk_toolbar_get_style" (ptr t_typ @-> returning (Toolbar_style.t_view))
(*Not implemented gtk_toolbar_insert type object not implemented*)
(*Not implemented gtk_toolbar_set_drop_highlight_item type object not implemented*)
let set_icon_size =
  foreign "gtk_toolbar_set_icon_size" (ptr t_typ @-> Icon_size.t_view @-> returning (void))
let set_show_arrow =
  foreign "gtk_toolbar_set_show_arrow" (ptr t_typ @-> bool @-> returning (void))
let set_style =
  foreign "gtk_toolbar_set_style" (ptr t_typ @-> Toolbar_style.t_view @-> returning (void))
let unset_icon_size =
  foreign "gtk_toolbar_unset_icon_size" (ptr t_typ @-> returning (void))
let unset_style =
  foreign "gtk_toolbar_unset_style" (ptr t_typ @-> returning (void))
