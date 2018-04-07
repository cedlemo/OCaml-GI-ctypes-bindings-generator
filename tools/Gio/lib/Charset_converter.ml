open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create to_charset from_charset =
  let create_raw =
    foreign "g_charset_converter_new" (string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_raw to_charset from_charset err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_num_fallbacks =
  foreign "g_charset_converter_get_num_fallbacks" (t_typ @-> returning (uint32_t))
let get_use_fallback =
  foreign "g_charset_converter_get_use_fallback" (t_typ @-> returning (bool))
let set_use_fallback =
  foreign "g_charset_converter_set_use_fallback" (t_typ @-> bool @-> returning (void))
