open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Paper_size"

let create =
  foreign "gtk_paper_size_new" (string_opt @-> returning (ptr t_typ))
let create_custom =
  foreign "gtk_paper_size_new_custom" (string @-> string @-> double @-> double @-> Unit.t_view @-> returning (ptr t_typ))
let create_from_gvariant =
  foreign "gtk_paper_size_new_from_gvariant" (ptr Variant.t_typ @-> returning (ptr t_typ))
let create_from_ipp =
  foreign "gtk_paper_size_new_from_ipp" (string @-> double @-> double @-> returning (ptr t_typ))
let create_from_key_file key_file group_name =
  let create_from_key_file_raw =
    foreign "gtk_paper_size_new_from_key_file" (ptr Key_file.t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = create_from_key_file_raw key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_ppd =
  foreign "gtk_paper_size_new_from_ppd" (string @-> string @-> double @-> double @-> returning (ptr t_typ))
let copy =
  foreign "gtk_paper_size_copy" (t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_paper_size_free" (t_typ @-> returning (void))
let get_default_bottom_margin =
  foreign "gtk_paper_size_get_default_bottom_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_default_left_margin =
  foreign "gtk_paper_size_get_default_left_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_default_right_margin =
  foreign "gtk_paper_size_get_default_right_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_default_top_margin =
  foreign "gtk_paper_size_get_default_top_margin" (t_typ @-> Unit.t_view @-> returning (double))
let get_display_name =
  foreign "gtk_paper_size_get_display_name" (t_typ @-> returning (string_opt))
let get_height =
  foreign "gtk_paper_size_get_height" (t_typ @-> Unit.t_view @-> returning (double))
let get_name =
  foreign "gtk_paper_size_get_name" (t_typ @-> returning (string_opt))
let get_ppd_name =
  foreign "gtk_paper_size_get_ppd_name" (t_typ @-> returning (string_opt))
let get_width =
  foreign "gtk_paper_size_get_width" (t_typ @-> Unit.t_view @-> returning (double))
let is_custom =
  foreign "gtk_paper_size_is_custom" (t_typ @-> returning (bool))
let is_equal =
  foreign "gtk_paper_size_is_equal" (t_typ @-> ptr t_typ @-> returning (bool))
let is_ipp =
  foreign "gtk_paper_size_is_ipp" (t_typ @-> returning (bool))
let set_size =
  foreign "gtk_paper_size_set_size" (t_typ @-> double @-> double @-> Unit.t_view @-> returning (void))
let to_gvariant =
  foreign "gtk_paper_size_to_gvariant" (t_typ @-> returning (ptr Variant.t_typ))
let to_key_file =
  foreign "gtk_paper_size_to_key_file" (t_typ @-> ptr Key_file.t_typ @-> string @-> returning (void))
let get_default =
  foreign "gtk_paper_size_get_default" (void @-> returning (string_opt))
let get_paper_sizes =
  foreign "gtk_paper_size_get_paper_sizes" (bool @-> returning (ptr List.t_typ))
