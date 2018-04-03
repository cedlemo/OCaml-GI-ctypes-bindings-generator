open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_page_setup_new" (void @-> returning (t_typ))
let create_from_file file_name =
  let create_from_file_raw =
    foreign "gtk_page_setup_new_from_file" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_file_raw file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_gvariant =
  foreign "gtk_page_setup_new_from_gvariant" (ptr Variant.t_typ @-> returning (t_typ))
let create_from_key_file key_file group_name =
  let create_from_key_file_raw =
    foreign "gtk_page_setup_new_from_key_file" (ptr Key_file.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_key_file_raw key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let copy =
  foreign "gtk_page_setup_copy" (t_typ @-> returning (t_typ))
let get_bottom_margin =
  foreign "gtk_page_setup_get_bottom_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_left_margin =
  foreign "gtk_page_setup_get_left_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_orientation =
  foreign "gtk_page_setup_get_orientation" (t_typ @-> returning (Page_orientation.t_view))
let get_page_height =
  foreign "gtk_page_setup_get_page_height" (t_typ @-> Unit.t_view @-> returning (double))
let get_page_width =
  foreign "gtk_page_setup_get_page_width" (t_typ @-> Unit.t_view @-> returning (double))
let get_paper_height =
  foreign "gtk_page_setup_get_paper_height" (t_typ @-> Unit.t_view @-> returning (double))
let get_paper_size =
  foreign "gtk_page_setup_get_paper_size" (t_typ @-> returning (ptr Paper_size.t_typ))
let get_paper_width =
  foreign "gtk_page_setup_get_paper_width" (t_typ @-> Unit.t_view @-> returning (double))
let get_right_margin =
  foreign "gtk_page_setup_get_right_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_top_margin =
  foreign "gtk_page_setup_get_top_margin" (t_typ @-> Unit.t_view @-> returning (double))
let load_file self file_name =
  let load_file_raw =
    foreign "gtk_page_setup_load_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let load_key_file self key_file group_name =
  let load_key_file_raw =
    foreign "gtk_page_setup_load_key_file" (t_typ @-> ptr Key_file.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_key_file_raw self key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_bottom_margin =
  foreign "gtk_page_setup_set_bottom_margin" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_left_margin =
  foreign "gtk_page_setup_set_left_margin" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_orientation =
  foreign "gtk_page_setup_set_orientation" (t_typ @-> Page_orientation.t_view @-> returning (void))
let set_paper_size =
  foreign "gtk_page_setup_set_paper_size" (t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_paper_size_and_default_margins =
  foreign "gtk_page_setup_set_paper_size_and_default_margins" (t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_right_margin =
  foreign "gtk_page_setup_set_right_margin" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_top_margin =
  foreign "gtk_page_setup_set_top_margin" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let to_file self file_name =
  let to_file_raw =
    foreign "gtk_page_setup_to_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = to_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_gvariant =
  foreign "gtk_page_setup_to_gvariant" (t_typ @-> returning (ptr Variant.t_typ))
let to_key_file =
  foreign "gtk_page_setup_to_key_file" (t_typ @-> ptr Key_file.t_typ @-> string @-> returning (void))
