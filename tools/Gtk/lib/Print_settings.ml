open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_print_settings_new return type object not handled*)
(*Not implemented gtk_print_settings_new_from_file return type object not handled*)
(*Not implemented gtk_print_settings_new_from_gvariant return type object not handled*)
(*Not implemented gtk_print_settings_new_from_key_file return type object not handled*)
(*Not implemented gtk_print_settings_copy return type object not handled*)
(*Not implemented gtk_print_settings_foreach type callback not implemented*)
let get =
  foreign "gtk_print_settings_get" (ptr t_typ @-> string @-> returning (string_opt))
let get_bool =
  foreign "gtk_print_settings_get_bool" (ptr t_typ @-> string @-> returning (bool))
let get_collate =
  foreign "gtk_print_settings_get_collate" (ptr t_typ @-> returning (bool))
let get_default_source =
  foreign "gtk_print_settings_get_default_source" (ptr t_typ @-> returning (string_opt))
let get_dither =
  foreign "gtk_print_settings_get_dither" (ptr t_typ @-> returning (string_opt))
let get_double =
  foreign "gtk_print_settings_get_double" (ptr t_typ @-> string @-> returning (double))
let get_double_with_default =
  foreign "gtk_print_settings_get_double_with_default" (ptr t_typ @-> string @-> double @-> returning (double))
let get_duplex =
  foreign "gtk_print_settings_get_duplex" (ptr t_typ @-> returning (Print_duplex.t_view))
let get_finishings =
  foreign "gtk_print_settings_get_finishings" (ptr t_typ @-> returning (string_opt))
let get_int =
  foreign "gtk_print_settings_get_int" (ptr t_typ @-> string @-> returning (int32_t))
let get_int_with_default =
  foreign "gtk_print_settings_get_int_with_default" (ptr t_typ @-> string @-> int32_t @-> returning (int32_t))
let get_length =
  foreign "gtk_print_settings_get_length" (ptr t_typ @-> string @-> Unit.t_view @-> returning (double))
let get_media_type =
  foreign "gtk_print_settings_get_media_type" (ptr t_typ @-> returning (string_opt))
let get_n_copies =
  foreign "gtk_print_settings_get_n_copies" (ptr t_typ @-> returning (int32_t))
let get_number_up =
  foreign "gtk_print_settings_get_number_up" (ptr t_typ @-> returning (int32_t))
let get_number_up_layout =
  foreign "gtk_print_settings_get_number_up_layout" (ptr t_typ @-> returning (Number_up_layout.t_view))
let get_orientation =
  foreign "gtk_print_settings_get_orientation" (ptr t_typ @-> returning (Page_orientation.t_view))
let get_output_bin =
  foreign "gtk_print_settings_get_output_bin" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_print_settings_get_page_ranges return type C Array type for Types.Array tag not handled*)
let get_page_set =
  foreign "gtk_print_settings_get_page_set" (ptr t_typ @-> returning (Page_set.t_view))
let get_paper_height =
  foreign "gtk_print_settings_get_paper_height" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_paper_size =
  foreign "gtk_print_settings_get_paper_size" (ptr t_typ @-> returning (ptr Paper_size.t_typ))
let get_paper_width =
  foreign "gtk_print_settings_get_paper_width" (ptr t_typ @-> Unit.t_view @-> returning (double))
let get_print_pages =
  foreign "gtk_print_settings_get_print_pages" (ptr t_typ @-> returning (Print_pages.t_view))
let get_printer =
  foreign "gtk_print_settings_get_printer" (ptr t_typ @-> returning (string_opt))
let get_printer_lpi =
  foreign "gtk_print_settings_get_printer_lpi" (ptr t_typ @-> returning (double))
let get_quality =
  foreign "gtk_print_settings_get_quality" (ptr t_typ @-> returning (Print_quality.t_view))
let get_resolution =
  foreign "gtk_print_settings_get_resolution" (ptr t_typ @-> returning (int32_t))
let get_resolution_x =
  foreign "gtk_print_settings_get_resolution_x" (ptr t_typ @-> returning (int32_t))
let get_resolution_y =
  foreign "gtk_print_settings_get_resolution_y" (ptr t_typ @-> returning (int32_t))
let get_reverse =
  foreign "gtk_print_settings_get_reverse" (ptr t_typ @-> returning (bool))
let get_scale =
  foreign "gtk_print_settings_get_scale" (ptr t_typ @-> returning (double))
let get_use_color =
  foreign "gtk_print_settings_get_use_color" (ptr t_typ @-> returning (bool))
let has_key =
  foreign "gtk_print_settings_has_key" (ptr t_typ @-> string @-> returning (bool))
let load_file self file_name =
  let load_file_raw =
    foreign "gtk_print_settings_load_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
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
    foreign "gtk_print_settings_load_key_file" (ptr t_typ @-> ptr Key_file.t_typ @-> string_opt@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = load_key_file_raw self key_file group_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set =
  foreign "gtk_print_settings_set" (ptr t_typ @-> string @-> string_opt @-> returning (void))
let set_bool =
  foreign "gtk_print_settings_set_bool" (ptr t_typ @-> string @-> bool @-> returning (void))
let set_collate =
  foreign "gtk_print_settings_set_collate" (ptr t_typ @-> bool @-> returning (void))
let set_default_source =
  foreign "gtk_print_settings_set_default_source" (ptr t_typ @-> string @-> returning (void))
let set_dither =
  foreign "gtk_print_settings_set_dither" (ptr t_typ @-> string @-> returning (void))
let set_double =
  foreign "gtk_print_settings_set_double" (ptr t_typ @-> string @-> double @-> returning (void))
let set_duplex =
  foreign "gtk_print_settings_set_duplex" (ptr t_typ @-> Print_duplex.t_view @-> returning (void))
let set_finishings =
  foreign "gtk_print_settings_set_finishings" (ptr t_typ @-> string @-> returning (void))
let set_int =
  foreign "gtk_print_settings_set_int" (ptr t_typ @-> string @-> int32_t @-> returning (void))
let set_length =
  foreign "gtk_print_settings_set_length" (ptr t_typ @-> string @-> double @-> Unit.t_view @-> returning (void))
let set_media_type =
  foreign "gtk_print_settings_set_media_type" (ptr t_typ @-> string @-> returning (void))
let set_n_copies =
  foreign "gtk_print_settings_set_n_copies" (ptr t_typ @-> int32_t @-> returning (void))
let set_number_up =
  foreign "gtk_print_settings_set_number_up" (ptr t_typ @-> int32_t @-> returning (void))
let set_number_up_layout =
  foreign "gtk_print_settings_set_number_up_layout" (ptr t_typ @-> Number_up_layout.t_view @-> returning (void))
let set_orientation =
  foreign "gtk_print_settings_set_orientation" (ptr t_typ @-> Page_orientation.t_view @-> returning (void))
let set_output_bin =
  foreign "gtk_print_settings_set_output_bin" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_print_settings_set_page_ranges type C Array type for Types.Array tag not implemented*)
let set_page_set =
  foreign "gtk_print_settings_set_page_set" (ptr t_typ @-> Page_set.t_view @-> returning (void))
let set_paper_height =
  foreign "gtk_print_settings_set_paper_height" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_paper_size =
  foreign "gtk_print_settings_set_paper_size" (ptr t_typ @-> ptr Paper_size.t_typ @-> returning (void))
let set_paper_width =
  foreign "gtk_print_settings_set_paper_width" (ptr t_typ @-> double @-> Unit.t_view @-> returning (void))
let set_print_pages =
  foreign "gtk_print_settings_set_print_pages" (ptr t_typ @-> Print_pages.t_view @-> returning (void))
let set_printer =
  foreign "gtk_print_settings_set_printer" (ptr t_typ @-> string @-> returning (void))
let set_printer_lpi =
  foreign "gtk_print_settings_set_printer_lpi" (ptr t_typ @-> double @-> returning (void))
let set_quality =
  foreign "gtk_print_settings_set_quality" (ptr t_typ @-> Print_quality.t_view @-> returning (void))
let set_resolution =
  foreign "gtk_print_settings_set_resolution" (ptr t_typ @-> int32_t @-> returning (void))
let set_resolution_xy =
  foreign "gtk_print_settings_set_resolution_xy" (ptr t_typ @-> int32_t @-> int32_t @-> returning (void))
let set_reverse =
  foreign "gtk_print_settings_set_reverse" (ptr t_typ @-> bool @-> returning (void))
let set_scale =
  foreign "gtk_print_settings_set_scale" (ptr t_typ @-> double @-> returning (void))
let set_use_color =
  foreign "gtk_print_settings_set_use_color" (ptr t_typ @-> bool @-> returning (void))
let to_file self file_name =
  let to_file_raw =
    foreign "gtk_print_settings_to_file" (ptr t_typ @-> string@-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = to_file_raw self file_name err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let to_gvariant =
  foreign "gtk_print_settings_to_gvariant" (ptr t_typ @-> returning (ptr Variant.t_typ))
let to_key_file =
  foreign "gtk_print_settings_to_key_file" (ptr t_typ @-> ptr Key_file.t_typ @-> string @-> returning (void))
let unset =
  foreign "gtk_print_settings_unset" (ptr t_typ @-> string @-> returning (void))
