open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_settings_new" (string @-> returning (t_typ))
let create_full =
  foreign "g_settings_new_full" (ptr Settings_schema.t_typ @-> Settings_backend.t_typ @-> string_opt @-> returning (t_typ))
let create_with_backend =
  foreign "g_settings_new_with_backend" (string @-> Settings_backend.t_typ @-> returning (t_typ))
let create_with_backend_and_path =
  foreign "g_settings_new_with_backend_and_path" (string @-> Settings_backend.t_typ @-> string @-> returning (t_typ))
let create_with_path =
  foreign "g_settings_new_with_path" (string @-> string @-> returning (t_typ))
(*Not implemented g_settings_list_relocatable_schemas return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_schemas return type C Array type for Types.Array tag not handled*)
let sync =
  foreign "g_settings_sync" (void @-> returning (void))
let unbind =
  foreign "g_settings_unbind" (Object.t_typ @-> string @-> returning (void))
let apply =
  foreign "g_settings_apply" (t_typ @-> returning (void))
let bind =
  foreign "g_settings_bind" (t_typ @-> string @-> Object.t_typ @-> string @-> Settings_bind_flags.t_list_view @-> returning (void))
let bind_writable =
  foreign "g_settings_bind_writable" (t_typ @-> string @-> Object.t_typ @-> string @-> bool @-> returning (void))
(*Not implemented g_settings_create_action return type interface not handled*)
let delay =
  foreign "g_settings_delay" (t_typ @-> returning (void))
let get_boolean =
  foreign "g_settings_get_boolean" (t_typ @-> string @-> returning (bool))
let get_child =
  foreign "g_settings_get_child" (t_typ @-> string @-> returning (t_typ))
let get_default_value =
  foreign "g_settings_get_default_value" (t_typ @-> string @-> returning (ptr_opt Variant.t_typ))
let get_double =
  foreign "g_settings_get_double" (t_typ @-> string @-> returning (double))
let get_enum =
  foreign "g_settings_get_enum" (t_typ @-> string @-> returning (int32_t))
let get_flags =
  foreign "g_settings_get_flags" (t_typ @-> string @-> returning (uint32_t))
let get_has_unapplied =
  foreign "g_settings_get_has_unapplied" (t_typ @-> returning (bool))
let get_int =
  foreign "g_settings_get_int" (t_typ @-> string @-> returning (int32_t))
let get_int64 =
  foreign "g_settings_get_int64" (t_typ @-> string @-> returning (int64_t))
(*Not implemented g_settings_get_mapped type callback not implemented*)
let get_range =
  foreign "g_settings_get_range" (t_typ @-> string @-> returning (ptr Variant.t_typ))
let get_string =
  foreign "g_settings_get_string" (t_typ @-> string @-> returning (string_opt))
(*Not implemented g_settings_get_strv return type C Array type for Types.Array tag not handled*)
let get_uint =
  foreign "g_settings_get_uint" (t_typ @-> string @-> returning (uint32_t))
let get_uint64 =
  foreign "g_settings_get_uint64" (t_typ @-> string @-> returning (uint64_t))
let get_user_value =
  foreign "g_settings_get_user_value" (t_typ @-> string @-> returning (ptr_opt Variant.t_typ))
let get_value =
  foreign "g_settings_get_value" (t_typ @-> string @-> returning (ptr Variant.t_typ))
let is_writable =
  foreign "g_settings_is_writable" (t_typ @-> string @-> returning (bool))
(*Not implemented g_settings_list_children return type C Array type for Types.Array tag not handled*)
(*Not implemented g_settings_list_keys return type C Array type for Types.Array tag not handled*)
let range_check =
  foreign "g_settings_range_check" (t_typ @-> string @-> ptr Variant.t_typ @-> returning (bool))
let reset =
  foreign "g_settings_reset" (t_typ @-> string @-> returning (void))
let revert =
  foreign "g_settings_revert" (t_typ @-> returning (void))
let set_boolean =
  foreign "g_settings_set_boolean" (t_typ @-> string @-> bool @-> returning (bool))
let set_double =
  foreign "g_settings_set_double" (t_typ @-> string @-> double @-> returning (bool))
let set_enum =
  foreign "g_settings_set_enum" (t_typ @-> string @-> int32_t @-> returning (bool))
let set_flags =
  foreign "g_settings_set_flags" (t_typ @-> string @-> uint32_t @-> returning (bool))
let set_int =
  foreign "g_settings_set_int" (t_typ @-> string @-> int32_t @-> returning (bool))
let set_int64 =
  foreign "g_settings_set_int64" (t_typ @-> string @-> int64_t @-> returning (bool))
let set_string =
  foreign "g_settings_set_string" (t_typ @-> string @-> string @-> returning (bool))
(*Not implemented g_settings_set_strv type C Array type for Types.Array tag not implemented*)
let set_uint =
  foreign "g_settings_set_uint" (t_typ @-> string @-> uint32_t @-> returning (bool))
let set_uint64 =
  foreign "g_settings_set_uint64" (t_typ @-> string @-> uint64_t @-> returning (bool))
let set_value =
  foreign "g_settings_set_value" (t_typ @-> string @-> ptr Variant.t_typ @-> returning (bool))
