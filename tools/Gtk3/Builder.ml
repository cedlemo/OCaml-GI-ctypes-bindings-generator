open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_builder_new" (void @-> returning (ptr t_typ))
let create_from_file =
  foreign "gtk_builder_new_from_file" (string @-> returning (ptr t_typ))
let create_from_resource =
  foreign "gtk_builder_new_from_resource" (string @-> returning (ptr t_typ))
let create_from_string =
  foreign "gtk_builder_new_from_string" (string @-> int64_t @-> returning (ptr t_typ))
(*Not implemented gtk_builder_add_callback_symbol type callback not implemented*)
let add_from_file self filename =
  let add_from_file_raw =
    foreign "gtk_builder_add_from_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_from_resource self resource_path =
  let add_from_resource_raw =
    foreign "gtk_builder_add_from_resource" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_from_resource_raw self resource_path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_from_string self buffer length =
  let add_from_string_raw =
    foreign "gtk_builder_add_from_string" (t_typ @-> string @-> uint64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = add_from_string_raw self buffer length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented gtk_builder_add_objects_from_file type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_resource type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_string type C Array type for Types.Array tag not implemented*)
let connect_signals =
  foreign "gtk_builder_connect_signals" (t_typ @-> ptr_opt void @-> returning (void))
(*Not implemented gtk_builder_connect_signals_full type callback not implemented*)
let expose_object =
  foreign "gtk_builder_expose_object" (t_typ @-> string @-> ptr Object.t_typ @-> returning (void))
(*Not implemented gtk_builder_extend_with_template type gType not implemented*)
let get_application =
  foreign "gtk_builder_get_application" (t_typ @-> returning (ptr_opt Application.t_typ))
let get_object =
  foreign "gtk_builder_get_object" (t_typ @-> string @-> returning (ptr_opt Object.t_typ))
let get_objects =
  foreign "gtk_builder_get_objects" (t_typ @-> returning (ptr SList.t_typ))
let get_translation_domain =
  foreign "gtk_builder_get_translation_domain" (t_typ @-> returning (string_opt))
(*Not implemented gtk_builder_get_type_from_name return type gType not handled*)
let set_application =
  foreign "gtk_builder_set_application" (t_typ @-> ptr Application.t_typ @-> returning (void))
let set_translation_domain =
  foreign "gtk_builder_set_translation_domain" (t_typ @-> string_opt @-> returning (void))
let value_from_string self pspec _string =
  let value_from_string_raw =
    foreign "gtk_builder_value_from_string" (t_typ @-> ptr Param_spec.t_typ @-> string @-> ptr (Value.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let ret = value_from_string_raw self pspec _string value_ptr err_ptr_ptr in
  let get_ret_value () =
    let value = !@ value_ptr in
    (ret, value)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)(*Not implemented gtk_builder_value_from_string_type type gType not implemented*)
