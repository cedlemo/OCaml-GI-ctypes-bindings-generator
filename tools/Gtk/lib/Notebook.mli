open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_notebook_new return type object not handled*)
(*Not implemented gtk_notebook_append_page type object not implemented*)
(*Not implemented gtk_notebook_append_page_menu type object not implemented*)
(*Not implemented gtk_notebook_detach_tab type object not implemented*)
(*Not implemented gtk_notebook_get_action_widget return type object not handled*)
val get_current_page:
  t structure ptr -> int32
val get_group_name:
  t structure ptr -> string option
(*Not implemented gtk_notebook_get_menu_label type object not implemented*)
(*Not implemented gtk_notebook_get_menu_label_text type object not implemented*)
val get_n_pages:
  t structure ptr -> int32
(*Not implemented gtk_notebook_get_nth_page return type object not handled*)
val get_scrollable:
  t structure ptr -> bool
val get_show_border:
  t structure ptr -> bool
val get_show_tabs:
  t structure ptr -> bool
(*Not implemented gtk_notebook_get_tab_detachable type object not implemented*)
val get_tab_hborder:
  t structure ptr -> Unsigned.uint16
(*Not implemented gtk_notebook_get_tab_label type object not implemented*)
(*Not implemented gtk_notebook_get_tab_label_text type object not implemented*)
val get_tab_pos:
  t structure ptr -> Position_type.t
(*Not implemented gtk_notebook_get_tab_reorderable type object not implemented*)
val get_tab_vborder:
  t structure ptr -> Unsigned.uint16
(*Not implemented gtk_notebook_insert_page type object not implemented*)
(*Not implemented gtk_notebook_insert_page_menu type object not implemented*)
val next_page:
  t structure ptr -> unit
(*Not implemented gtk_notebook_page_num type object not implemented*)
val popup_disable:
  t structure ptr -> unit
val popup_enable:
  t structure ptr -> unit
(*Not implemented gtk_notebook_prepend_page type object not implemented*)
(*Not implemented gtk_notebook_prepend_page_menu type object not implemented*)
val prev_page:
  t structure ptr -> unit
val remove_page:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_notebook_reorder_child type object not implemented*)
(*Not implemented gtk_notebook_set_action_widget type object not implemented*)
val set_current_page:
  t structure ptr -> int32 -> unit
val set_group_name:
  t structure ptr -> string option -> unit
(*Not implemented gtk_notebook_set_menu_label type object not implemented*)
(*Not implemented gtk_notebook_set_menu_label_text type object not implemented*)
val set_scrollable:
  t structure ptr -> bool -> unit
val set_show_border:
  t structure ptr -> bool -> unit
val set_show_tabs:
  t structure ptr -> bool -> unit
(*Not implemented gtk_notebook_set_tab_detachable type object not implemented*)
(*Not implemented gtk_notebook_set_tab_label type object not implemented*)
(*Not implemented gtk_notebook_set_tab_label_text type object not implemented*)
val set_tab_pos:
  t structure ptr -> Position_type.t -> unit
(*Not implemented gtk_notebook_set_tab_reorderable type object not implemented*)
