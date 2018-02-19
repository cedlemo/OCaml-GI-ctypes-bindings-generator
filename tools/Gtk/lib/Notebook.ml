open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_notebook_new return type object not handled*)
(*Not implemented gtk_notebook_append_page type object not implemented*)
(*Not implemented gtk_notebook_append_page_menu type object not implemented*)
(*Not implemented gtk_notebook_detach_tab type object not implemented*)
(*Not implemented gtk_notebook_get_action_widget return type object not handled*)
let get_current_page =
  foreign "gtk_notebook_get_current_page" (ptr t_typ @-> returning (int32_t))
let get_group_name =
  foreign "gtk_notebook_get_group_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_notebook_get_menu_label type object not implemented*)
(*Not implemented gtk_notebook_get_menu_label_text type object not implemented*)
let get_n_pages =
  foreign "gtk_notebook_get_n_pages" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_notebook_get_nth_page return type object not handled*)
let get_scrollable =
  foreign "gtk_notebook_get_scrollable" (ptr t_typ @-> returning (bool))
let get_show_border =
  foreign "gtk_notebook_get_show_border" (ptr t_typ @-> returning (bool))
let get_show_tabs =
  foreign "gtk_notebook_get_show_tabs" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_notebook_get_tab_detachable type object not implemented*)
let get_tab_hborder =
  foreign "gtk_notebook_get_tab_hborder" (ptr t_typ @-> returning (uint16_t))
(*Not implemented gtk_notebook_get_tab_label type object not implemented*)
(*Not implemented gtk_notebook_get_tab_label_text type object not implemented*)
let get_tab_pos =
  foreign "gtk_notebook_get_tab_pos" (ptr t_typ @-> returning (Position_type.t_view))
(*Not implemented gtk_notebook_get_tab_reorderable type object not implemented*)
let get_tab_vborder =
  foreign "gtk_notebook_get_tab_vborder" (ptr t_typ @-> returning (uint16_t))
(*Not implemented gtk_notebook_insert_page type object not implemented*)
(*Not implemented gtk_notebook_insert_page_menu type object not implemented*)
let next_page =
  foreign "gtk_notebook_next_page" (ptr t_typ @-> returning (void))
(*Not implemented gtk_notebook_page_num type object not implemented*)
let popup_disable =
  foreign "gtk_notebook_popup_disable" (ptr t_typ @-> returning (void))
let popup_enable =
  foreign "gtk_notebook_popup_enable" (ptr t_typ @-> returning (void))
(*Not implemented gtk_notebook_prepend_page type object not implemented*)
(*Not implemented gtk_notebook_prepend_page_menu type object not implemented*)
let prev_page =
  foreign "gtk_notebook_prev_page" (ptr t_typ @-> returning (void))
let remove_page =
  foreign "gtk_notebook_remove_page" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_notebook_reorder_child type object not implemented*)
(*Not implemented gtk_notebook_set_action_widget type object not implemented*)
let set_current_page =
  foreign "gtk_notebook_set_current_page" (ptr t_typ @-> int32_t @-> returning (void))
let set_group_name =
  foreign "gtk_notebook_set_group_name" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_notebook_set_menu_label type object not implemented*)
(*Not implemented gtk_notebook_set_menu_label_text type object not implemented*)
let set_scrollable =
  foreign "gtk_notebook_set_scrollable" (ptr t_typ @-> bool @-> returning (void))
let set_show_border =
  foreign "gtk_notebook_set_show_border" (ptr t_typ @-> bool @-> returning (void))
let set_show_tabs =
  foreign "gtk_notebook_set_show_tabs" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_notebook_set_tab_detachable type object not implemented*)
(*Not implemented gtk_notebook_set_tab_label type object not implemented*)
(*Not implemented gtk_notebook_set_tab_label_text type object not implemented*)
let set_tab_pos =
  foreign "gtk_notebook_set_tab_pos" (ptr t_typ @-> Position_type.t_view @-> returning (void))
(*Not implemented gtk_notebook_set_tab_reorderable type object not implemented*)
