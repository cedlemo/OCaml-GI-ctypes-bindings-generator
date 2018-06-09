open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_toolbar_new" (void @-> returning (Widget.t_typ))
let get_drop_index =
  foreign "gtk_toolbar_get_drop_index" (t_typ @-> int32_t @-> int32_t @-> returning (int32_t))
let get_icon_size =
  foreign "gtk_toolbar_get_icon_size" (t_typ @-> returning (Icon_size.t_view))
let get_item_index =
  foreign "gtk_toolbar_get_item_index" (t_typ @-> Tool_item.t_typ @-> returning (int32_t))
let get_n_items =
  foreign "gtk_toolbar_get_n_items" (t_typ @-> returning (int32_t))
let get_nth_item =
  foreign "gtk_toolbar_get_nth_item" (t_typ @-> int32_t @-> returning (Tool_item.t_typ))
let get_relief_style =
  foreign "gtk_toolbar_get_relief_style" (t_typ @-> returning (Relief_style.t_view))
let get_show_arrow =
  foreign "gtk_toolbar_get_show_arrow" (t_typ @-> returning (bool))
let get_style =
  foreign "gtk_toolbar_get_style" (t_typ @-> returning (Toolbar_style.t_view))
let insert =
  foreign "gtk_toolbar_insert" (t_typ @-> Tool_item.t_typ @-> int32_t @-> returning (void))
let set_drop_highlight_item =
  foreign "gtk_toolbar_set_drop_highlight_item" (t_typ @-> Tool_item.t_typ @-> int32_t @-> returning (void))
let set_icon_size =
  foreign "gtk_toolbar_set_icon_size" (t_typ @-> Icon_size.t_view @-> returning (void))
let set_show_arrow =
  foreign "gtk_toolbar_set_show_arrow" (t_typ @-> bool @-> returning (void))
let set_style =
  foreign "gtk_toolbar_set_style" (t_typ @-> Toolbar_style.t_view @-> returning (void))
let unset_icon_size =
  foreign "gtk_toolbar_unset_icon_size" (t_typ @-> returning (void))
let unset_style =
  foreign "gtk_toolbar_unset_style" (t_typ @-> returning (void))
