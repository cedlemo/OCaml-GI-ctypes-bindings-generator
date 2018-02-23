open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Recent_info"

(*Not implemented gtk_recent_info_create_app_info return type interface not handled*)
let exists =
  foreign "gtk_recent_info_exists" (t_typ @-> returning (bool))
let get_added =
  foreign "gtk_recent_info_get_added" (t_typ @-> returning (int64_t))
let get_age =
  foreign "gtk_recent_info_get_age" (t_typ @-> returning (int32_t))
let get_application_info self app_name =
  let app_exec_ptr = allocate string " " in
  let count_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let time__ptr = allocate int64_t Int64.zero in
  let get_application_info_raw =
    foreign "gtk_recent_info_get_application_info" (t_typ @-> string @-> ptr (string) @-> ptr (uint32_t) @-> ptr (int64_t) @-> returning bool)
  in
  let ret = get_application_info_raw self app_name app_exec_ptr count_ptr time__ptr in
  let app_exec = !@ app_exec_ptr in
  let count = !@ count_ptr in
  let time_ = !@ time__ptr in
  (ret, app_exec, count, time_)
(*Not implemented gtk_recent_info_get_applications return type C Array type for Types.Array tag not handled*)
let get_description =
  foreign "gtk_recent_info_get_description" (t_typ @-> returning (string_opt))
let get_display_name =
  foreign "gtk_recent_info_get_display_name" (t_typ @-> returning (string_opt))
(*Not implemented gtk_recent_info_get_gicon return type interface not handled*)
(*Not implemented gtk_recent_info_get_groups return type C Array type for Types.Array tag not handled*)
let get_icon =
  foreign "gtk_recent_info_get_icon" (t_typ @-> int32_t @-> returning (Pixbuf.t_typ))
let get_mime_type =
  foreign "gtk_recent_info_get_mime_type" (t_typ @-> returning (string_opt))
let get_modified =
  foreign "gtk_recent_info_get_modified" (t_typ @-> returning (int64_t))
let get_private_hint =
  foreign "gtk_recent_info_get_private_hint" (t_typ @-> returning (bool))
let get_short_name =
  foreign "gtk_recent_info_get_short_name" (t_typ @-> returning (string_opt))
let get_uri =
  foreign "gtk_recent_info_get_uri" (t_typ @-> returning (string_opt))
let get_uri_display =
  foreign "gtk_recent_info_get_uri_display" (t_typ @-> returning (string_opt))
let get_visited =
  foreign "gtk_recent_info_get_visited" (t_typ @-> returning (int64_t))
let has_application =
  foreign "gtk_recent_info_has_application" (t_typ @-> string @-> returning (bool))
let has_group =
  foreign "gtk_recent_info_has_group" (t_typ @-> string @-> returning (bool))
let is_local =
  foreign "gtk_recent_info_is_local" (t_typ @-> returning (bool))
let last_application =
  foreign "gtk_recent_info_last_application" (t_typ @-> returning (string_opt))
let _match =
  foreign "gtk_recent_info_match" (t_typ @-> ptr t_typ @-> returning (bool))
let incr_ref =
  foreign "gtk_recent_info_ref" (t_typ @-> returning (ptr t_typ))
let unref =
  foreign "gtk_recent_info_unref" (t_typ @-> returning (void))
