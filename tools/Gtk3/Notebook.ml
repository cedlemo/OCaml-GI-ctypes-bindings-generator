open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_notebook_new" (void @-> returning (ptr Widget.t_typ))
let append_page =
  foreign "gtk_notebook_append_page" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (int32_t))
let append_page_menu =
  foreign "gtk_notebook_append_page_menu" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (int32_t))
let detach_tab =
  foreign "gtk_notebook_detach_tab" (t_typ @-> ptr Widget.t_typ @-> returning (void))
let get_action_widget =
  foreign "gtk_notebook_get_action_widget" (t_typ @-> Pack_type.t_view @-> returning (ptr_opt Widget.t_typ))
let get_current_page =
  foreign "gtk_notebook_get_current_page" (t_typ @-> returning (int32_t))
let get_group_name =
  foreign "gtk_notebook_get_group_name" (t_typ @-> returning (string_opt))
let get_menu_label =
  foreign "gtk_notebook_get_menu_label" (t_typ @-> ptr Widget.t_typ @-> returning (ptr_opt Widget.t_typ))
let get_menu_label_text =
  foreign "gtk_notebook_get_menu_label_text" (t_typ @-> ptr Widget.t_typ @-> returning (string_opt))
let get_n_pages =
  foreign "gtk_notebook_get_n_pages" (t_typ @-> returning (int32_t))
let get_nth_page =
  foreign "gtk_notebook_get_nth_page" (t_typ @-> int32_t @-> returning (ptr_opt Widget.t_typ))
let get_scrollable =
  foreign "gtk_notebook_get_scrollable" (t_typ @-> returning (bool))
let get_show_border =
  foreign "gtk_notebook_get_show_border" (t_typ @-> returning (bool))
let get_show_tabs =
  foreign "gtk_notebook_get_show_tabs" (t_typ @-> returning (bool))
let get_tab_detachable =
  foreign "gtk_notebook_get_tab_detachable" (t_typ @-> ptr Widget.t_typ @-> returning (bool))
let get_tab_hborder =
  foreign "gtk_notebook_get_tab_hborder" (t_typ @-> returning (uint16_t))
let get_tab_label =
  foreign "gtk_notebook_get_tab_label" (t_typ @-> ptr Widget.t_typ @-> returning (ptr_opt Widget.t_typ))
let get_tab_label_text =
  foreign "gtk_notebook_get_tab_label_text" (t_typ @-> ptr Widget.t_typ @-> returning (string_opt))
let get_tab_pos =
  foreign "gtk_notebook_get_tab_pos" (t_typ @-> returning (Position_type.t_view))
let get_tab_reorderable =
  foreign "gtk_notebook_get_tab_reorderable" (t_typ @-> ptr Widget.t_typ @-> returning (bool))
let get_tab_vborder =
  foreign "gtk_notebook_get_tab_vborder" (t_typ @-> returning (uint16_t))
let insert_page =
  foreign "gtk_notebook_insert_page" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> int32_t @-> returning (int32_t))
let insert_page_menu =
  foreign "gtk_notebook_insert_page_menu" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> ptr_opt Widget.t_typ @-> int32_t @-> returning (int32_t))
let next_page =
  foreign "gtk_notebook_next_page" (t_typ @-> returning (void))
let page_num =
  foreign "gtk_notebook_page_num" (t_typ @-> ptr Widget.t_typ @-> returning (int32_t))
let popup_disable =
  foreign "gtk_notebook_popup_disable" (t_typ @-> returning (void))
let popup_enable =
  foreign "gtk_notebook_popup_enable" (t_typ @-> returning (void))
let prepend_page =
  foreign "gtk_notebook_prepend_page" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (int32_t))
let prepend_page_menu =
  foreign "gtk_notebook_prepend_page_menu" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (int32_t))
let prev_page =
  foreign "gtk_notebook_prev_page" (t_typ @-> returning (void))
let remove_page =
  foreign "gtk_notebook_remove_page" (t_typ @-> int32_t @-> returning (void))
let reorder_child =
  foreign "gtk_notebook_reorder_child" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> returning (void))
let set_action_widget =
  foreign "gtk_notebook_set_action_widget" (t_typ @-> ptr Widget.t_typ @-> Pack_type.t_view @-> returning (void))
let set_current_page =
  foreign "gtk_notebook_set_current_page" (t_typ @-> int32_t @-> returning (void))
let set_group_name =
  foreign "gtk_notebook_set_group_name" (t_typ @-> string_opt @-> returning (void))
let set_menu_label =
  foreign "gtk_notebook_set_menu_label" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_menu_label_text =
  foreign "gtk_notebook_set_menu_label_text" (t_typ @-> ptr Widget.t_typ @-> string @-> returning (void))
let set_scrollable =
  foreign "gtk_notebook_set_scrollable" (t_typ @-> bool @-> returning (void))
let set_show_border =
  foreign "gtk_notebook_set_show_border" (t_typ @-> bool @-> returning (void))
let set_show_tabs =
  foreign "gtk_notebook_set_show_tabs" (t_typ @-> bool @-> returning (void))
let set_tab_detachable =
  foreign "gtk_notebook_set_tab_detachable" (t_typ @-> ptr Widget.t_typ @-> bool @-> returning (void))
let set_tab_label =
  foreign "gtk_notebook_set_tab_label" (t_typ @-> ptr Widget.t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
let set_tab_label_text =
  foreign "gtk_notebook_set_tab_label_text" (t_typ @-> ptr Widget.t_typ @-> string @-> returning (void))
let set_tab_pos =
  foreign "gtk_notebook_set_tab_pos" (t_typ @-> Position_type.t_view @-> returning (void))
let set_tab_reorderable =
  foreign "gtk_notebook_set_tab_reorderable" (t_typ @-> ptr Widget.t_typ @-> bool @-> returning (void))
