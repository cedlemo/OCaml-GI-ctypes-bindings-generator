open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Widget_path"

let create =
  foreign "gtk_widget_path_new" (void @-> returning (ptr t_typ))
let append_for_widget =
  foreign "gtk_widget_path_append_for_widget" (ptr t_typ @-> Widget.t_typ @-> returning (int32_t))
(*Not implemented gtk_widget_path_append_type type gType not implemented*)
let append_with_siblings =
  foreign "gtk_widget_path_append_with_siblings" (ptr t_typ @-> ptr t_typ @-> uint32_t @-> returning (int32_t))
let copy =
  foreign "gtk_widget_path_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_widget_path_free" (ptr t_typ @-> returning (void))
(*Not implemented gtk_widget_path_get_object_type return type gType not handled*)
(*Not implemented gtk_widget_path_has_parent type gType not implemented*)
(*Not implemented gtk_widget_path_is_type type gType not implemented*)
let iter_add_class =
  foreign "gtk_widget_path_iter_add_class" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let iter_add_region =
  foreign "gtk_widget_path_iter_add_region" (ptr t_typ @-> int32_t @-> string @-> Region_flags.t_list_view @-> returning (void))
let iter_clear_classes =
  foreign "gtk_widget_path_iter_clear_classes" (ptr t_typ @-> int32_t @-> returning (void))
let iter_clear_regions =
  foreign "gtk_widget_path_iter_clear_regions" (ptr t_typ @-> int32_t @-> returning (void))
let iter_get_name =
  foreign "gtk_widget_path_iter_get_name" (ptr t_typ @-> int32_t @-> returning (string_opt))
let iter_get_object_name =
  foreign "gtk_widget_path_iter_get_object_name" (ptr t_typ @-> int32_t @-> returning (string_opt))
(*Not implemented gtk_widget_path_iter_get_object_type return type gType not handled*)
let iter_get_sibling_index =
  foreign "gtk_widget_path_iter_get_sibling_index" (ptr t_typ @-> int32_t @-> returning (uint32_t))
let iter_get_siblings =
  foreign "gtk_widget_path_iter_get_siblings" (ptr t_typ @-> int32_t @-> returning (ptr t_typ))
let iter_get_state =
  foreign "gtk_widget_path_iter_get_state" (ptr t_typ @-> int32_t @-> returning (State_flags.t_list_view))
let iter_has_class =
  foreign "gtk_widget_path_iter_has_class" (ptr t_typ @-> int32_t @-> string @-> returning (bool))
let iter_has_name =
  foreign "gtk_widget_path_iter_has_name" (ptr t_typ @-> int32_t @-> string @-> returning (bool))
let iter_has_qclass =
  foreign "gtk_widget_path_iter_has_qclass" (ptr t_typ @-> int32_t @-> uint32_t @-> returning (bool))
let iter_has_qname =
  foreign "gtk_widget_path_iter_has_qname" (ptr t_typ @-> int32_t @-> uint32_t @-> returning (bool))
let iter_has_qregion self pos qname =
  let iter_has_qregion_raw =
    foreign "gtk_widget_path_iter_has_qregion" (ptr t_typ @-> int32_t @-> uint32_t @-> ptr (Region_flags.t_list_view) @-> returning (bool))
  in
  let flags_ptr = allocate Region_flags.t_view (Region_flags.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = iter_has_qregion_raw self pos qname flags_ptr in
  let flags = (!@ flags_ptr) in
  (ret, flags)let iter_has_region self pos name =
  let iter_has_region_raw =
    foreign "gtk_widget_path_iter_has_region" (ptr t_typ @-> int32_t @-> string @-> ptr (Region_flags.t_list_view) @-> returning (bool))
  in
  let flags_ptr = allocate Region_flags.t_view (Region_flags.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = iter_has_region_raw self pos name flags_ptr in
  let flags = (!@ flags_ptr) in
  (ret, flags)let iter_list_classes =
  foreign "gtk_widget_path_iter_list_classes" (ptr t_typ @-> int32_t @-> returning (ptr SList.t_typ))
let iter_list_regions =
  foreign "gtk_widget_path_iter_list_regions" (ptr t_typ @-> int32_t @-> returning (ptr SList.t_typ))
let iter_remove_class =
  foreign "gtk_widget_path_iter_remove_class" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let iter_remove_region =
  foreign "gtk_widget_path_iter_remove_region" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let iter_set_name =
  foreign "gtk_widget_path_iter_set_name" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let iter_set_object_name =
  foreign "gtk_widget_path_iter_set_object_name" (ptr t_typ @-> int32_t @-> string_opt @-> returning (void))
(*Not implemented gtk_widget_path_iter_set_object_type type gType not implemented*)
let iter_set_state =
  foreign "gtk_widget_path_iter_set_state" (ptr t_typ @-> int32_t @-> State_flags.t_list_view @-> returning (void))
let length =
  foreign "gtk_widget_path_length" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_widget_path_prepend_type type gType not implemented*)
let incr_ref =
  foreign "gtk_widget_path_ref" (ptr t_typ @-> returning (ptr t_typ))
let to_string =
  foreign "gtk_widget_path_to_string" (ptr t_typ @-> returning (string_opt))
let unref =
  foreign "gtk_widget_path_unref" (ptr t_typ @-> returning (void))
