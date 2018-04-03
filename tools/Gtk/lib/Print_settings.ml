open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_print_settings_new" (void @-> returning (t_typ))
let create_from_file file_name =
  let create_from_file_raw =
    foreign "gtk_print_settings_new_from_file" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_file_raw file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let create_from_gvariant =
  foreign "gtk_print_settings_new_from_gvariant" (ptr Variant.t_typ @-> returning (t_typ))
let create_from_key_file key_file group_name =
  let create_from_key_file_raw =
    foreign "gtk_print_settings_new_from_key_file" (ptr Key_file.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_key_file_raw key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let copy =
  foreign "gtk_print_settings_copy" (t_typ @-> returning (t_typ))
(*Not implemented gtk_print_settings_foreach type callback not implemented*)
let get =
  foreign "gtk_print_settings_get" (t_typ @-> string @-> returning (string_opt))
let get_bool =
  foreign "gtk_print_settings_get_bool" (t_typ @-> string @-> returning (bool))
let get_collate =
  foreign "gtk_print_settings_get_collate" (t_typ @-> returning (bool))
let get_default_source =
  foreign "gtk_print_settings_get_default_source" (t_typ @-> returning (string_opt))
let get_dither =
  foreign "gtk_print_settings_get_dither" (t_typ @-> returning (string_opt))
let get_double =
  foreign "gtk_print_settings_get_double" (t_typ @-> string @-> returning (double))
let get_double_with_default =
  foreign "gtk_print_settings_get_double_with_default" (t_typ @-> string @-> double @-> returning (double))
let get_duplex =
  foreign "gtk_print_settings_get_duplex" (t_typ @-> returning (Print_duplex.t_view))
let get_finishings =
  foreign "gtk_print_settings_get_finishings" (t_typ @-> returning (string_opt))
let get_int =
  foreign "gtk_print_settings_get_int" (t_typ @-> string @-> returning (int32_t))
let get_int_with_default =
  foreign "gtk_print_settings_get_int_with_default" (t_typ @-> string @-> int32_t @-> returning (int32_t))
let get_length =
  foreign "gtk_print_settings_get_length" (t_typ @-> string @-> Unit.t_view @-> returning (double))
let get_media_type =
  foreign "gtk_print_settings_get_media_type" (t_typ @-> returning (string_opt))
let get_n_copies =
  foreign "gtk_print_settings_get_n_copies" (t_typ @-> returning (int32_t))
let get_number_up =
  foreign "gtk_print_settings_get_number_up" (t_typ @-> returning (int32_t))
let get_number_up_layout =
  foreign "gtk_print_settings_get_number_up_layout" (t_typ @-> returning (Number_up_layout.t_view))
let get_orientation =
  foreign "gtk_print_settings_get_orientation" (t_typ @-> returning (Page_orientation.t_view))
let get_output_bin =
  foreign "gtk_print_settings_get_output_bin" (t_typ @-> returning (string_opt))
(*Not implemented gtk_print_settings_get_page_ranges return type C Array type for Types.Array tag not handled*)
let get_page_set =
  foreign "gtk_print_settings_get_page_set" (t_typ @-> returning (Page_set.t_view))
let get_paper_height =
  foreign "gtk_print_settings_get_paper_height" (t_typ @-> Unit.t_view @-> returning (double))
let get_paper_size =
  foreign "gtk_print_settings_get_paper_size" (t_typ @-> returning (ptr Paper_size.t_typ))
let get_paper_width =
  foreign "gtk_print_settings_get_paper_width" (t_typ @-> Unit.t_view @-> returning (double))
let get_print_pages =
  foreign "gtk_print_settings_get_print_pages" (t_typ @-> returning (Print_pages.t_view))
let get_printer =
  foreign "gtk_print_settings_get_printer" (t_typ @-> returning (string_opt))
let get_printer_lpi =
  foreign "gtk_print_settings_get_printer_lpi" (t_typ @-> returning (double))
let get_quality =
  foreign "gtk_print_settings_get_quality" (t_typ @-> returning (Print_quality.t_view))
let get_resolution =
  foreign "gtk_print_settings_get_resolution" (t_typ @-> returning (int32_t))
let get_resolution_x =
  foreign "gtk_print_settings_get_resolution_x" (t_typ @-> returning (int32_t))
let get_resolution_y =
  foreign "gtk_print_settings_get_resolution_y" (t_typ @-> returning (int32_t))
let get_reverse =
  foreign "gtk_print_settings_get_reverse" (t_typ @-> returning (bool))
let get_scale =
  foreign "gtk_print_settings_get_scale" (t_typ @-> returning (double))
let get_use_color =
  foreign "gtk_print_settings_get_use_color" (t_typ @-> returning (bool))
let has_key =
  foreign "gtk_print_settings_has_key" (t_typ @-> string @-> returning (bool))
let load_file self file_name =
  let load_file_raw =
    foreign "gtk_print_settings_load_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
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
    foreign "gtk_print_settings_load_key_file" (t_typ @-> ptr Key_file.t_typ @-> string_opt @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_key_file_raw self key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set =
  foreign "gtk_print_settings_set" (t_typ @-> string @-> string_opt @-> returning (void))
let set_bool =
  foreign "gtk_print_settings_set_bool" (t_typ @-> string @-> bool @-> returning (void))
let set_collate =
  foreign "gtk_print_settings_set_collate" (t_typ @-> bool @-> returning (void))
let set_default_source =
  foreign "gtk_print_settings_set_default_source" (t_typ @-> string @-> returning (void))
let set_dither =
  foreign "gtk_print_settings_set_dither" (t_typ @-> string @-> returning (void))
let set_double =
  foreign "gtk_print_settings_set_double" (t_typ @-> string @-> double @-> returning (void))
let set_duplex =
  foreign "gtk_print_settings_set_duplex" (t_typ @-> Print_duplex.t_view @-> returning (void))
let set_finishings =
  foreign "gtk_print_settings_set_finishings" (t_typ @-> string @-> returning (void))
let set_int =
  foreign "gtk_print_settings_set_int" (t_typ @-> string @-> int32_t @-> returning (void))
let set_length =
  foreign "gtk_print_settings_set_length" (t_typ @-> string @-> double @-> Unit.t_view @-> returning (void))
let set_media_type =
  foreign "gtk_print_settings_set_media_type" (t_typ @-> string @-> returning (void))
let set_n_copies =
  foreign "gtk_print_settings_set_n_copies" (t_typ @-> int32_t @-> returning (void))
let set_number_up =
  foreign "gtk_print_settings_set_number_up" (t_typ @-> int32_t @-> returning (void))
let set_number_up_layout =
  foreign "gtk_print_settings_set_number_up_layout" (t_typ @-> Number_up_layout.t_view @-> returning (void))
let set_orientation =
  foreign "gtk_print_settings_set_orientation" (t_typ @-> Page_orientation.t_view @-> returning (void))
let set_output_bin =
  foreign "gtk_print_settings_set_output_bin" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_print_settings_set_page_ranges type C Array type for Types.Array tag not implemented*)
let set_page_set =
  foreign "gtk_print_settings_set_page_set" (t_typ @-> Page_set.t_view @-> returning (void))
let set_paper_height =
  foreign "gtk_print_settings_set_paper_height" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_paper_size =
  foreign "gtk_print_settings_set_paper_size" (t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_paper_width =
  foreign "gtk_print_settings_set_paper_width" (t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_print_pages =
  foreign "gtk_print_settings_set_print_pages" (t_typ @-> Print_pages.t_view @-> returning (void))
let set_printer =
  foreign "gtk_print_settings_set_printer" (t_typ @-> string @-> returning (void))
let set_printer_lpi =
  foreign "gtk_print_settings_set_printer_lpi" (t_typ @-> double @-> returning (void))
let set_quality =
  foreign "gtk_print_settings_set_quality" (t_typ @-> Print_quality.t_view @-> returning (void))
let set_resolution =
  foreign "gtk_print_settings_set_resolution" (t_typ @-> int32_t @-> returning (void))
let set_resolution_xy =
  foreign "gtk_print_settings_set_resolution_xy" (t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_reverse =
  foreign "gtk_print_settings_set_reverse" (t_typ @-> bool @-> returning (void))
let set_scale =
  foreign "gtk_print_settings_set_scale" (t_typ @-> double @-> returning (void))
let set_use_color =
  foreign "gtk_print_settings_set_use_color" (t_typ @-> bool @-> returning (void))
let to_file self file_name =
  let to_file_raw =
    foreign "gtk_print_settings_to_file" (t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = to_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_gvariant =
  foreign "gtk_print_settings_to_gvariant" (t_typ @-> returning (ptr Variant.t_typ))
let to_key_file =
  foreign "gtk_print_settings_to_key_file" (t_typ @-> ptr Key_file.t_typ @-> string @-> returning (void))
let unset =
  foreign "gtk_print_settings_unset" (t_typ @-> string @-> returning (void))
