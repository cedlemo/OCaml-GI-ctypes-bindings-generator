open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_builder_new return type object not handled*)
(*Not implemented gtk_builder_new_from_file return type object not handled*)
(*Not implemented gtk_builder_new_from_resource return type object not handled*)
(*Not implemented gtk_builder_new_from_string return type object not handled*)
(*Not implemented gtk_builder_add_callback_symbol type callback not implemented*)
let add_from_file self filename =
  let add_from_file_raw =
    foreign "gtk_builder_add_from_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_from_file_raw self filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_from_resource self resource_path =
  let add_from_resource_raw =
    foreign "gtk_builder_add_from_resource" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_from_resource_raw self resource_path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_from_string self buffer length =
  let add_from_string_raw =
    foreign "gtk_builder_add_from_string" (ptr t_typ @-> string @-> uint64_t@-> ptr (ptr_opt Error.t_typ) @-> returning (uint32_t))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = add_from_string_raw self buffer length err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented gtk_builder_add_objects_from_file type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_resource type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_builder_add_objects_from_string type C Array type for Types.Array tag not implemented*)
let connect_signals =
  foreign "gtk_builder_connect_signals" (ptr t_typ @-> ptr_opt void @-> returning (void))
(*Not implemented gtk_builder_connect_signals_full type callback not implemented*)
(*Not implemented gtk_builder_expose_object type object not implemented*)
(*Not implemented gtk_builder_extend_with_template type object not implemented*)
(*Not implemented gtk_builder_get_application return type object not handled*)
(*Not implemented gtk_builder_get_object return type object not handled*)
let get_objects =
  foreign "gtk_builder_get_objects" (ptr t_typ @-> returning (ptr SList.t_typ))
let get_translation_domain =
  foreign "gtk_builder_get_translation_domain" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_builder_get_type_from_name return type gType not handled*)
(*Not implemented gtk_builder_set_application type object not implemented*)
let set_translation_domain =
  foreign "gtk_builder_set_translation_domain" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_builder_value_from_string type object not implemented*)
(*Not implemented gtk_builder_value_from_string_type type gType not implemented*)
