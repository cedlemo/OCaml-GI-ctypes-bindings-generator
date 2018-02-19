open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_combo_box_new return type object not handled*)
(*Not implemented gtk_combo_box_new_with_area type object not implemented*)
(*Not implemented gtk_combo_box_new_with_area_and_entry type object not implemented*)
(*Not implemented gtk_combo_box_new_with_entry return type object not handled*)
(*Not implemented gtk_combo_box_new_with_model type interface not implemented*)
(*Not implemented gtk_combo_box_new_with_model_and_entry type interface not implemented*)
let get_active =
  foreign "gtk_combo_box_get_active" (ptr t_typ @-> returning (int32_t))
let get_active_id =
  foreign "gtk_combo_box_get_active_id" (ptr t_typ @-> returning (string_opt))
let get_active_iter self =
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let get_active_iter_raw =
    foreign "gtk_combo_box_get_active_iter" (ptr t_typ @-> ptr (Tree_iter.t_typ) @-> returning bool)
  in
  let ret = get_active_iter_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (ret, iter)
let get_add_tearoffs =
  foreign "gtk_combo_box_get_add_tearoffs" (ptr t_typ @-> returning (bool))
let get_button_sensitivity =
  foreign "gtk_combo_box_get_button_sensitivity" (ptr t_typ @-> returning (Sensitivity_type.t_view))
let get_column_span_column =
  foreign "gtk_combo_box_get_column_span_column" (ptr t_typ @-> returning (int32_t))
let get_entry_text_column =
  foreign "gtk_combo_box_get_entry_text_column" (ptr t_typ @-> returning (int32_t))
let get_focus_on_click =
  foreign "gtk_combo_box_get_focus_on_click" (ptr t_typ @-> returning (bool))
let get_has_entry =
  foreign "gtk_combo_box_get_has_entry" (ptr t_typ @-> returning (bool))
let get_id_column =
  foreign "gtk_combo_box_get_id_column" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_combo_box_get_model return type interface not handled*)
(*Not implemented gtk_combo_box_get_popup_accessible return type object not handled*)
let get_popup_fixed_width =
  foreign "gtk_combo_box_get_popup_fixed_width" (ptr t_typ @-> returning (bool))
let get_row_span_column =
  foreign "gtk_combo_box_get_row_span_column" (ptr t_typ @-> returning (int32_t))
let get_title =
  foreign "gtk_combo_box_get_title" (ptr t_typ @-> returning (string_opt))
let get_wrap_width =
  foreign "gtk_combo_box_get_wrap_width" (ptr t_typ @-> returning (int32_t))
let popdown =
  foreign "gtk_combo_box_popdown" (ptr t_typ @-> returning (void))
let popup =
  foreign "gtk_combo_box_popup" (ptr t_typ @-> returning (void))
(*Not implemented gtk_combo_box_popup_for_device type object not implemented*)
let set_active =
  foreign "gtk_combo_box_set_active" (ptr t_typ @-> int32_t @-> returning (void))
let set_active_id =
  foreign "gtk_combo_box_set_active_id" (ptr t_typ @-> string_opt @-> returning (bool))
let set_active_iter =
  foreign "gtk_combo_box_set_active_iter" (ptr t_typ @-> ptr_opt Tree_iter.t_typ @-> returning (void))
let set_add_tearoffs =
  foreign "gtk_combo_box_set_add_tearoffs" (ptr t_typ @-> bool @-> returning (void))
let set_button_sensitivity =
  foreign "gtk_combo_box_set_button_sensitivity" (ptr t_typ @-> Sensitivity_type.t_view @-> returning (void))
let set_column_span_column =
  foreign "gtk_combo_box_set_column_span_column" (ptr t_typ @-> int32_t @-> returning (void))
let set_entry_text_column =
  foreign "gtk_combo_box_set_entry_text_column" (ptr t_typ @-> int32_t @-> returning (void))
let set_focus_on_click =
  foreign "gtk_combo_box_set_focus_on_click" (ptr t_typ @-> bool @-> returning (void))
let set_id_column =
  foreign "gtk_combo_box_set_id_column" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_combo_box_set_model type interface not implemented*)
let set_popup_fixed_width =
  foreign "gtk_combo_box_set_popup_fixed_width" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_combo_box_set_row_separator_func type callback not implemented*)
let set_row_span_column =
  foreign "gtk_combo_box_set_row_span_column" (ptr t_typ @-> int32_t @-> returning (void))
let set_title =
  foreign "gtk_combo_box_set_title" (ptr t_typ @-> string @-> returning (void))
let set_wrap_width =
  foreign "gtk_combo_box_set_wrap_width" (ptr t_typ @-> int32_t @-> returning (void))
