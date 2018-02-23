open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_recent_manager_new" (void @-> returning (t_typ))
let get_default =
  foreign "gtk_recent_manager_get_default" (void @-> returning (t_typ))
let add_full =
  foreign "gtk_recent_manager_add_full" (t_typ @-> string @-> ptr Recent_data.t_typ @-> returning (bool))
let add_item =
  foreign "gtk_recent_manager_add_item" (t_typ @-> string @-> returning (bool))
let get_items =
  foreign "gtk_recent_manager_get_items" (t_typ @-> returning (ptr List.t_typ))
let has_item =
  foreign "gtk_recent_manager_has_item" (t_typ @-> string @-> returning (bool))
let lookup_item self uri =
  let lookup_item_raw =
    foreign "gtk_recent_manager_lookup_item" (t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Recent_info.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = lookup_item_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let move_item self uri create_uri =
  let move_item_raw =
    foreign "gtk_recent_manager_move_item" (t_typ @-> string @-> string_opt@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = move_item_raw self uri create_uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let purge_items self =
  let purge_items_raw =
    foreign "gtk_recent_manager_purge_items" (t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (int32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = purge_items_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let remove_item self uri =
  let remove_item_raw =
    foreign "gtk_recent_manager_remove_item" (t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = remove_item_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
