open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_css_provider_new" (void @-> returning (t_typ))
let get_default =
  foreign "gtk_css_provider_get_default" (void @-> returning (t_typ))
let get_named =
  foreign "gtk_css_provider_get_named" (string @-> string_opt @-> returning (t_typ))
(*Not implemented gtk_css_provider_load_from_data type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_css_provider_load_from_file type interface not implemented*)
let load_from_path self path =
  let load_from_path_raw =
    foreign "gtk_css_provider_load_from_path" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_from_path_raw self path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_from_resource =
  foreign "gtk_css_provider_load_from_resource" (t_typ @-> string @-> returning (void))
let to_string =
  foreign "gtk_css_provider_to_string" (t_typ @-> returning (string_opt))
