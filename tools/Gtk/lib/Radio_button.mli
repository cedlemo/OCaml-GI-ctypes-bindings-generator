open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_radio_button_new return type object not handled*)
(*Not implemented gtk_radio_button_new_from_widget type object not implemented*)
(*Not implemented gtk_radio_button_new_with_label return type object not handled*)
(*Not implemented gtk_radio_button_new_with_label_from_widget type object not implemented*)
(*Not implemented gtk_radio_button_new_with_mnemonic return type object not handled*)
(*Not implemented gtk_radio_button_new_with_mnemonic_from_widget type object not implemented*)
val get_group:
  t structure ptr -> SList.t structure ptr
(*Not implemented gtk_radio_button_join_group type object not implemented*)
val set_group:
  t structure ptr -> SList.t structure ptr option -> unit
