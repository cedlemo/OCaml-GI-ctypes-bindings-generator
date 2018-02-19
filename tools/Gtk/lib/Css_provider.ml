open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_css_provider_new return type object not handled*)
(*Not implemented gtk_css_provider_get_default return type object not handled*)
(*Not implemented gtk_css_provider_get_named return type object not handled*)
(*Not implemented gtk_css_provider_load_from_data type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_css_provider_load_from_file type interface not implemented*)
let load_from_path self path =
  let load_from_path_raw =
    foreign "gtk_css_provider_load_from_path" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = load_from_path_raw self path err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_from_resource =
  foreign "gtk_css_provider_load_from_resource" (ptr t_typ @-> string @-> returning (void))
let to_string =
  foreign "gtk_css_provider_to_string" (ptr t_typ @-> returning (string_opt))
