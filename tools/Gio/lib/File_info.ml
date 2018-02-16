open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_file_info_new return type object not handled*)
let clear_status =
  foreign "g_file_info_clear_status" (ptr t_typ @-> returning (void))
(*Not implemented g_file_info_copy_into type object not implemented*)
(*Not implemented g_file_info_dup return type object not handled*)
let get_attribute_as_string =
  foreign "g_file_info_get_attribute_as_string" (ptr t_typ @-> string @-> returning (string_opt))
let get_attribute_boolean =
  foreign "g_file_info_get_attribute_boolean" (ptr t_typ @-> string @-> returning (bool))
let get_attribute_byte_string =
  foreign "g_file_info_get_attribute_byte_string" (ptr t_typ @-> string @-> returning (string_opt))
let get_attribute_data self attribute =
  let _type_ptr = allocate File_attribute_type.t_view (File_attribute_type.t_view.of_value (Unsigned.UInt32.zero)) in
  let value_pp_ptr = allocate (ptr_opt void) None in
  let status_ptr = allocate File_attribute_status.t_view (File_attribute_status.t_view.of_value (Unsigned.UInt32.zero)) in
  let get_attribute_data_raw =
    foreign "g_file_info_get_attribute_data" (ptr t_typ @-> string @-> ptr (File_attribute_type.t_view) @-> ptr (ptr void) @-> ptr (File_attribute_status.t_view) @-> returning bool)
  in
  let ret = get_attribute_data_raw self attribute _type_ptr value_pp_ptr status_ptr in
  let _type = (!@ _type_ptr) in
  let value_pp = !@ value_pp_ptr in
  let status = (!@ status_ptr) in
  (ret, _type, value_pp, status)
let get_attribute_int32 =
  foreign "g_file_info_get_attribute_int32" (ptr t_typ @-> string @-> returning (int32_t))
let get_attribute_int64 =
  foreign "g_file_info_get_attribute_int64" (ptr t_typ @-> string @-> returning (int64_t))
(*Not implemented g_file_info_get_attribute_object return type object not handled*)
let get_attribute_status =
  foreign "g_file_info_get_attribute_status" (ptr t_typ @-> string @-> returning (File_attribute_status.t_view))
let get_attribute_string =
  foreign "g_file_info_get_attribute_string" (ptr t_typ @-> string @-> returning (string_opt))
(*Not implemented g_file_info_get_attribute_stringv return type C Array type for Types.Array tag not handled*)
let get_attribute_type =
  foreign "g_file_info_get_attribute_type" (ptr t_typ @-> string @-> returning (File_attribute_type.t_view))
let get_attribute_uint32 =
  foreign "g_file_info_get_attribute_uint32" (ptr t_typ @-> string @-> returning (uint32_t))
let get_attribute_uint64 =
  foreign "g_file_info_get_attribute_uint64" (ptr t_typ @-> string @-> returning (uint64_t))
let get_content_type =
  foreign "g_file_info_get_content_type" (ptr t_typ @-> returning (string_opt))
let get_deletion_date =
  foreign "g_file_info_get_deletion_date" (ptr t_typ @-> returning (ptr Date_time.t_typ))
let get_display_name =
  foreign "g_file_info_get_display_name" (ptr t_typ @-> returning (string_opt))
let get_edit_name =
  foreign "g_file_info_get_edit_name" (ptr t_typ @-> returning (string_opt))
let get_etag =
  foreign "g_file_info_get_etag" (ptr t_typ @-> returning (string_opt))
let get_file_type =
  foreign "g_file_info_get_file_type" (ptr t_typ @-> returning (File_type.t_view))
(*Not implemented g_file_info_get_icon return type interface not handled*)
let get_is_backup =
  foreign "g_file_info_get_is_backup" (ptr t_typ @-> returning (bool))
let get_is_hidden =
  foreign "g_file_info_get_is_hidden" (ptr t_typ @-> returning (bool))
let get_is_symlink =
  foreign "g_file_info_get_is_symlink" (ptr t_typ @-> returning (bool))
let get_modification_time self =
  let result_ptr = allocate Time_val.t_typ (make Time_val.t_typ) in
  let get_modification_time_raw =
    foreign "g_file_info_get_modification_time" (ptr t_typ @-> ptr (Time_val.t_typ) @-> returning void)
  in
  let ret = get_modification_time_raw self result_ptr in
  let result = !@ result_ptr in
  (result)
let get_name =
  foreign "g_file_info_get_name" (ptr t_typ @-> returning (string_opt))
let get_size =
  foreign "g_file_info_get_size" (ptr t_typ @-> returning (int64_t))
let get_sort_order =
  foreign "g_file_info_get_sort_order" (ptr t_typ @-> returning (int32_t))
(*Not implemented g_file_info_get_symbolic_icon return type interface not handled*)
let get_symlink_target =
  foreign "g_file_info_get_symlink_target" (ptr t_typ @-> returning (string_opt))
let has_attribute =
  foreign "g_file_info_has_attribute" (ptr t_typ @-> string @-> returning (bool))
let has_namespace =
  foreign "g_file_info_has_namespace" (ptr t_typ @-> string @-> returning (bool))
(*Not implemented g_file_info_list_attributes return type C Array type for Types.Array tag not handled*)
let remove_attribute =
  foreign "g_file_info_remove_attribute" (ptr t_typ @-> string @-> returning (void))
let set_attribute =
  foreign "g_file_info_set_attribute" (ptr t_typ @-> string @-> File_attribute_type.t_view @-> ptr void @-> returning (void))
let set_attribute_boolean =
  foreign "g_file_info_set_attribute_boolean" (ptr t_typ @-> string @-> bool @-> returning (void))
let set_attribute_byte_string =
  foreign "g_file_info_set_attribute_byte_string" (ptr t_typ @-> string @-> string @-> returning (void))
let set_attribute_int32 =
  foreign "g_file_info_set_attribute_int32" (ptr t_typ @-> string @-> int32_t @-> returning (void))
let set_attribute_int64 =
  foreign "g_file_info_set_attribute_int64" (ptr t_typ @-> string @-> int64_t @-> returning (void))
let set_attribute_mask =
  foreign "g_file_info_set_attribute_mask" (ptr t_typ @-> ptr File_attribute_matcher.t_typ @-> returning (void))
(*Not implemented g_file_info_set_attribute_object type object not implemented*)
let set_attribute_status =
  foreign "g_file_info_set_attribute_status" (ptr t_typ @-> string @-> File_attribute_status.t_view @-> returning (bool))
let set_attribute_string =
  foreign "g_file_info_set_attribute_string" (ptr t_typ @-> string @-> string @-> returning (void))
(*Not implemented g_file_info_set_attribute_stringv type C Array type for Types.Array tag not implemented*)
let set_attribute_uint32 =
  foreign "g_file_info_set_attribute_uint32" (ptr t_typ @-> string @-> uint32_t @-> returning (void))
let set_attribute_uint64 =
  foreign "g_file_info_set_attribute_uint64" (ptr t_typ @-> string @-> uint64_t @-> returning (void))
let set_content_type =
  foreign "g_file_info_set_content_type" (ptr t_typ @-> string @-> returning (void))
let set_display_name =
  foreign "g_file_info_set_display_name" (ptr t_typ @-> string @-> returning (void))
let set_edit_name =
  foreign "g_file_info_set_edit_name" (ptr t_typ @-> string @-> returning (void))
let set_file_type =
  foreign "g_file_info_set_file_type" (ptr t_typ @-> File_type.t_view @-> returning (void))
(*Not implemented g_file_info_set_icon type interface not implemented*)
let set_is_hidden =
  foreign "g_file_info_set_is_hidden" (ptr t_typ @-> bool @-> returning (void))
let set_is_symlink =
  foreign "g_file_info_set_is_symlink" (ptr t_typ @-> bool @-> returning (void))
let set_modification_time =
  foreign "g_file_info_set_modification_time" (ptr t_typ @-> ptr Time_val.t_typ @-> returning (void))
let set_name =
  foreign "g_file_info_set_name" (ptr t_typ @-> string @-> returning (void))
let set_size =
  foreign "g_file_info_set_size" (ptr t_typ @-> int64_t @-> returning (void))
let set_sort_order =
  foreign "g_file_info_set_sort_order" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented g_file_info_set_symbolic_icon type interface not implemented*)
let set_symlink_target =
  foreign "g_file_info_set_symlink_target" (ptr t_typ @-> string @-> returning (void))
let unset_attribute_mask =
  foreign "g_file_info_unset_attribute_mask" (ptr t_typ @-> returning (void))
