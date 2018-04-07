open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_icon_theme_new" (void @-> returning (t_typ))
let add_builtin_icon =
  foreign "gtk_icon_theme_add_builtin_icon" (string @-> int32_t @-> Pixbuf.t_typ @-> returning (void))
let get_default =
  foreign "gtk_icon_theme_get_default" (void @-> returning (t_typ))
let get_for_screen =
  foreign "gtk_icon_theme_get_for_screen" (Screen.t_typ @-> returning (t_typ))
let add_resource_path =
  foreign "gtk_icon_theme_add_resource_path" (t_typ @-> string @-> returning (void))
let append_search_path =
  foreign "gtk_icon_theme_append_search_path" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_icon_theme_choose_icon type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_theme_choose_icon_for_scale type C Array type for Types.Array tag not implemented*)
let get_example_icon_name =
  foreign "gtk_icon_theme_get_example_icon_name" (t_typ @-> returning (string_opt))
(*Not implemented gtk_icon_theme_get_icon_sizes return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_icon_theme_get_search_path type C Array type for Types.Array tag not implemented*)
let has_icon =
  foreign "gtk_icon_theme_has_icon" (t_typ @-> string @-> returning (bool))
let list_contexts =
  foreign "gtk_icon_theme_list_contexts" (t_typ @-> returning (ptr List.t_typ))
let list_icons =
  foreign "gtk_icon_theme_list_icons" (t_typ @-> string_opt @-> returning (ptr List.t_typ))
let load_icon self icon_name size flags =
  let load_icon_raw =
    foreign "gtk_icon_theme_load_icon" (t_typ @-> string @-> int32_t @-> Icon_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_icon_raw self icon_name size flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_icon_for_scale self icon_name size scale flags =
  let load_icon_for_scale_raw =
    foreign "gtk_icon_theme_load_icon_for_scale" (t_typ @-> string @-> int32_t @-> int32_t @-> Icon_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (Pixbuf.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_icon_for_scale_raw self icon_name size scale flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_surface self icon_name size scale for_window flags =
  let load_surface_raw =
    foreign "gtk_icon_theme_load_surface" (t_typ @-> string @-> int32_t @-> int32_t @-> Window.t_typ @-> Icon_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Surface.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_surface_raw self icon_name size scale for_window flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented gtk_icon_theme_lookup_by_gicon type interface not implemented*)
(*Not implemented gtk_icon_theme_lookup_by_gicon_for_scale type interface not implemented*)
let lookup_icon =
  foreign "gtk_icon_theme_lookup_icon" (t_typ @-> string @-> int32_t @-> Icon_lookup_flags.t_list_view @-> returning (Icon_info.t_typ))
let lookup_icon_for_scale =
  foreign "gtk_icon_theme_lookup_icon_for_scale" (t_typ @-> string @-> int32_t @-> int32_t @-> Icon_lookup_flags.t_list_view @-> returning (Icon_info.t_typ))
let prepend_search_path =
  foreign "gtk_icon_theme_prepend_search_path" (t_typ @-> string @-> returning (void))
let rescan_if_needed =
  foreign "gtk_icon_theme_rescan_if_needed" (t_typ @-> returning (bool))
let set_custom_theme =
  foreign "gtk_icon_theme_set_custom_theme" (t_typ @-> string_opt @-> returning (void))
let set_screen =
  foreign "gtk_icon_theme_set_screen" (t_typ @-> Screen.t_typ @-> returning (void))
(*Not implemented gtk_icon_theme_set_search_path type C Array type for Types.Array tag not implemented*)
