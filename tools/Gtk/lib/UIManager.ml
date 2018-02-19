open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_ui_manager_new return type object not handled*)
let add_ui =
  foreign "gtk_ui_manager_add_ui" (ptr t_typ @-> uint32_t @-> string @-> string @-> string_opt @-> UIManager_item_type.t_list_view @-> bool @-> returning (void))
let add_ui_from_file self filename =
  let add_ui_from_file_raw =
    foreign "gtk_ui_manager_add_ui_from_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_ui_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_ui_from_resource self resource_path =
  let add_ui_from_resource_raw =
    foreign "gtk_ui_manager_add_ui_from_resource" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_ui_from_resource_raw self resource_path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_ui_from_string self buffer length =
  let add_ui_from_string_raw =
    foreign "gtk_ui_manager_add_ui_from_string" (ptr t_typ @-> string @-> int64_t@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_ui_from_string_raw self buffer length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let ensure_update =
  foreign "gtk_ui_manager_ensure_update" (ptr t_typ @-> returning (void))
(*Not implemented gtk_ui_manager_get_accel_group return type object not handled*)
(*Not implemented gtk_ui_manager_get_action return type object not handled*)
let get_action_groups =
  foreign "gtk_ui_manager_get_action_groups" (ptr t_typ @-> returning (ptr List.t_typ))
let get_add_tearoffs =
  foreign "gtk_ui_manager_get_add_tearoffs" (ptr t_typ @-> returning (bool))
let get_toplevels =
  foreign "gtk_ui_manager_get_toplevels" (ptr t_typ @-> UIManager_item_type.t_list_view @-> returning (ptr SList.t_typ))
let get_ui =
  foreign "gtk_ui_manager_get_ui" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_ui_manager_get_widget return type object not handled*)
(*Not implemented gtk_ui_manager_insert_action_group type object not implemented*)
let create_merge_id =
  foreign "gtk_ui_manager_new_merge_id" (ptr t_typ @-> returning (uint32_t))
(*Not implemented gtk_ui_manager_remove_action_group type object not implemented*)
let remove_ui =
  foreign "gtk_ui_manager_remove_ui" (ptr t_typ @-> uint32_t @-> returning (void))
let set_add_tearoffs =
  foreign "gtk_ui_manager_set_add_tearoffs" (ptr t_typ @-> bool @-> returning (void))
