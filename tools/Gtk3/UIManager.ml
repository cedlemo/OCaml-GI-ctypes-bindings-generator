open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_ui_manager_new" (void @-> returning (ptr t_typ))
let add_ui =
  foreign "gtk_ui_manager_add_ui" (t_typ @-> uint32_t @-> string @-> string @-> string_opt @-> UIManager_item_type.t_list_view @-> bool @-> returning (void))
let add_ui_from_file self filename =
  let add_ui_from_file_raw =
    foreign "gtk_ui_manager_add_ui_from_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_ui_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_ui_from_resource self resource_path =
  let add_ui_from_resource_raw =
    foreign "gtk_ui_manager_add_ui_from_resource" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_ui_from_resource_raw self resource_path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_ui_from_string self buffer length =
  let add_ui_from_string_raw =
    foreign "gtk_ui_manager_add_ui_from_string" (t_typ @-> string @-> int64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_ui_from_string_raw self buffer length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let ensure_update =
  foreign "gtk_ui_manager_ensure_update" (t_typ @-> returning (void))
let get_accel_group =
  foreign "gtk_ui_manager_get_accel_group" (t_typ @-> returning (ptr Accel_group.t_typ))
let get_action =
  foreign "gtk_ui_manager_get_action" (t_typ @-> string @-> returning (ptr Action.t_typ))
let get_action_groups =
  foreign "gtk_ui_manager_get_action_groups" (t_typ @-> returning (ptr List.t_typ))
let get_add_tearoffs =
  foreign "gtk_ui_manager_get_add_tearoffs" (t_typ @-> returning (bool))
let get_toplevels =
  foreign "gtk_ui_manager_get_toplevels" (t_typ @-> UIManager_item_type.t_list_view @-> returning (ptr SList.t_typ))
let get_ui =
  foreign "gtk_ui_manager_get_ui" (t_typ @-> returning (string_opt))
let get_widget =
  foreign "gtk_ui_manager_get_widget" (t_typ @-> string @-> returning (ptr Widget.t_typ))
let insert_action_group =
  foreign "gtk_ui_manager_insert_action_group" (t_typ @-> ptr Action_group.t_typ @-> int32_t @-> returning (void))
let create_merge_id =
  foreign "gtk_ui_manager_new_merge_id" (t_typ @-> returning (uint32_t))
let remove_action_group =
  foreign "gtk_ui_manager_remove_action_group" (t_typ @-> ptr Action_group.t_typ @-> returning (void))
let remove_ui =
  foreign "gtk_ui_manager_remove_ui" (t_typ @-> uint32_t @-> returning (void))
let set_add_tearoffs =
  foreign "gtk_ui_manager_set_add_tearoffs" (t_typ @-> bool @-> returning (void))
