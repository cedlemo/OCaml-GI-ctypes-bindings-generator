open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_page_setup_new return type object not handled*)
(*Not implemented gtk_page_setup_new_from_file return type object not handled*)
(*Not implemented gtk_page_setup_new_from_gvariant return type object not handled*)
(*Not implemented gtk_page_setup_new_from_key_file return type object not handled*)
(*Not implemented gtk_page_setup_copy return type object not handled*)
let get_bottom_margin =
  foreign "gtk_page_setup_get_bottom_margin" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_left_margin =
  foreign "gtk_page_setup_get_left_margin" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_orientation =
  foreign "gtk_page_setup_get_orientation" (ptr t_typ @-> returning (Page_orientation.t_view))
let get_page_height =
  foreign "gtk_page_setup_get_page_height" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_page_width =
  foreign "gtk_page_setup_get_page_width" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_paper_height =
  foreign "gtk_page_setup_get_paper_height" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_paper_size =
  foreign "gtk_page_setup_get_paper_size" (ptr t_typ @-> returning (ptr Paper_size.t_typ))
let get_paper_width =
  foreign "gtk_page_setup_get_paper_width" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_right_margin =
  foreign "gtk_page_setup_get_right_margin" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_top_margin =
  foreign "gtk_page_setup_get_top_margin" (ptr t_typ @-> Unit.t_view @-> returning (double))
let load_file self file_name =
  let load_file_raw =
    foreign "gtk_page_setup_load_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = load_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_key_file self key_file group_name =
  let load_key_file_raw =
    foreign "gtk_page_setup_load_key_file" (ptr t_typ @-> ptr Key_file.t_typ @-> string_opt@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = load_key_file_raw self key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_bottom_margin =
  foreign "gtk_page_setup_set_bottom_margin" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_left_margin =
  foreign "gtk_page_setup_set_left_margin" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_orientation =
  foreign "gtk_page_setup_set_orientation" (ptr t_typ @-> Page_orientation.t_view @-> returning (void))
let set_paper_size =
  foreign "gtk_page_setup_set_paper_size" (ptr t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_paper_size_and_default_margins =
  foreign "gtk_page_setup_set_paper_size_and_default_margins" (ptr t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_right_margin =
  foreign "gtk_page_setup_set_right_margin" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_top_margin =
  foreign "gtk_page_setup_set_top_margin" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let to_file self file_name =
  let to_file_raw =
    foreign "gtk_page_setup_to_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = to_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_gvariant =
  foreign "gtk_page_setup_to_gvariant" (ptr t_typ @-> returning (ptr Variant.t_typ))
let to_key_file =
  foreign "gtk_page_setup_to_key_file" (ptr t_typ @-> ptr Key_file.t_typ @-> string @-> returning (void))
