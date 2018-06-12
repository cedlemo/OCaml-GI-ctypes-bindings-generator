open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Bookmark_file"

let add_application =
  foreign "g_bookmark_file_add_application" (ptr t_typ @-> string @-> string_opt @-> string_opt @-> returning (void))
let add_group =
  foreign "g_bookmark_file_add_group" (ptr t_typ @-> string @-> string @-> returning (void))
let free =
  foreign "g_bookmark_file_free" (ptr t_typ @-> returning (void))
let get_added self uri =
  let get_added_raw =
    foreign "g_bookmark_file_get_added" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_added_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_app_info self uri name =
  let get_app_info_raw =
    foreign "g_bookmark_file_get_app_info" (ptr t_typ @-> string @-> string @-> ptr (string) @-> ptr (uint32_t) @-> ptr (int64_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let exec_ptr = allocate string " " in
  let count_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let stamp_ptr = allocate int64_t Int64.zero in
  let ret = get_app_info_raw self uri name exec_ptr count_ptr stamp_ptr err_ptr_ptr in
  let get_ret_value () =
    let exec = !@ exec_ptr in
   let count = !@ count_ptr in
   let stamp = !@ stamp_ptr in
    (ret, exec, count, stamp)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented g_bookmark_file_get_applications return type C Array type for Types.Array tag not handled*)
let get_description self uri =
  let get_description_raw =
    foreign "g_bookmark_file_get_description" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_description_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_bookmark_file_get_groups return type C Array type for Types.Array tag not handled*)
let get_icon self uri =
  let get_icon_raw =
    foreign "g_bookmark_file_get_icon" (ptr t_typ @-> string @-> ptr (string) @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let href_ptr = allocate string " " in
  let mime_type_ptr = allocate string " " in
  let ret = get_icon_raw self uri href_ptr mime_type_ptr err_ptr_ptr in
  let get_ret_value () =
    let href = !@ href_ptr in
   let mime_type = !@ mime_type_ptr in
    (ret, href, mime_type)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let get_is_private self uri =
  let get_is_private_raw =
    foreign "g_bookmark_file_get_is_private" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_is_private_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_mime_type self uri =
  let get_mime_type_raw =
    foreign "g_bookmark_file_get_mime_type" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_mime_type_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_modified self uri =
  let get_modified_raw =
    foreign "g_bookmark_file_get_modified" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_modified_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_size =
  foreign "g_bookmark_file_get_size" (ptr t_typ @-> returning (int32_t))
let get_title self uri =
  let get_title_raw =
    foreign "g_bookmark_file_get_title" (ptr t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_title_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_bookmark_file_get_uris return type C Array type for Types.Array tag not handled*)
let get_visited self uri =
  let get_visited_raw =
    foreign "g_bookmark_file_get_visited" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (int64_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = get_visited_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let has_application self uri name =
  let has_application_raw =
    foreign "g_bookmark_file_has_application" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = has_application_raw self uri name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let has_group self uri group =
  let has_group_raw =
    foreign "g_bookmark_file_has_group" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = has_group_raw self uri group err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let has_item =
  foreign "g_bookmark_file_has_item" (ptr t_typ @-> string @-> returning (bool))
(*Not implemented g_bookmark_file_load_from_data type C Array type for Types.Array tag not implemented*)
let load_from_data_dirs self file =
  let load_from_data_dirs_raw =
    foreign "g_bookmark_file_load_from_data_dirs" (ptr t_typ @-> string @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let full_path_ptr = allocate string " " in
  let ret = load_from_data_dirs_raw self file full_path_ptr err_ptr_ptr in
  let get_ret_value () =
    let full_path = !@ full_path_ptr in
    (ret, full_path)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)let load_from_file self filename =
  let load_from_file_raw =
    foreign "g_bookmark_file_load_from_file" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let move_item self old_uri create_uri =
  let move_item_raw =
    foreign "g_bookmark_file_move_item" (ptr t_typ @-> string @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = move_item_raw self old_uri create_uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_application self uri name =
  let remove_application_raw =
    foreign "g_bookmark_file_remove_application" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_application_raw self uri name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_group self uri group =
  let remove_group_raw =
    foreign "g_bookmark_file_remove_group" (ptr t_typ @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_group_raw self uri group err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_item self uri =
  let remove_item_raw =
    foreign "g_bookmark_file_remove_item" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = remove_item_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_added =
  foreign "g_bookmark_file_set_added" (ptr t_typ @-> string @-> int64_t @-> returning (void))
let set_app_info self uri name exec count stamp =
  let set_app_info_raw =
    foreign "g_bookmark_file_set_app_info" (ptr t_typ @-> string @-> string @-> string @-> int32_t @-> int64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = set_app_info_raw self uri name exec count stamp err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_description =
  foreign "g_bookmark_file_set_description" (ptr t_typ @-> string_opt @-> string @-> returning (void))
(*Not implemented g_bookmark_file_set_groups type C Array type for Types.Array tag not implemented*)
let set_icon =
  foreign "g_bookmark_file_set_icon" (ptr t_typ @-> string @-> string_opt @-> string @-> returning (void))
let set_is_private =
  foreign "g_bookmark_file_set_is_private" (ptr t_typ @-> string @-> bool @-> returning (void))
let set_mime_type =
  foreign "g_bookmark_file_set_mime_type" (ptr t_typ @-> string @-> string @-> returning (void))
let set_modified =
  foreign "g_bookmark_file_set_modified" (ptr t_typ @-> string @-> int64_t @-> returning (void))
let set_title =
  foreign "g_bookmark_file_set_title" (ptr t_typ @-> string_opt @-> string @-> returning (void))
let set_visited =
  foreign "g_bookmark_file_set_visited" (ptr t_typ @-> string @-> int64_t @-> returning (void))
(*Not implemented g_bookmark_file_to_data return type C Array type for Types.Array tag not handled*)
let to_file self filename =
  let to_file_raw =
    foreign "g_bookmark_file_to_file" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = to_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let error_quark =
  foreign "g_bookmark_file_error_quark" (void @-> returning (uint32_t))
