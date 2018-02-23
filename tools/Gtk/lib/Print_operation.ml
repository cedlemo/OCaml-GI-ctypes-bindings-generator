open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_print_operation_new" (void @-> returning (t_typ))
let cancel =
  foreign "gtk_print_operation_cancel" (t_typ @-> returning (void))
let draw_page_finish =
  foreign "gtk_print_operation_draw_page_finish" (t_typ @-> returning (void))
let get_default_page_setup =
  foreign "gtk_print_operation_get_default_page_setup" (t_typ @-> returning (Page_setup.t_typ))
let get_embed_page_setup =
  foreign "gtk_print_operation_get_embed_page_setup" (t_typ @-> returning (bool))
let get_error self =
  let get_error_raw =
    foreign "gtk_print_operation_get_error" (t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (void))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = get_error_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_has_selection =
  foreign "gtk_print_operation_get_has_selection" (t_typ @-> returning (bool))
let get_n_pages_to_print =
  foreign "gtk_print_operation_get_n_pages_to_print" (t_typ @-> returning (int32_t))
let get_print_settings =
  foreign "gtk_print_operation_get_print_settings" (t_typ @-> returning (Print_settings.t_typ))
let get_status =
  foreign "gtk_print_operation_get_status" (t_typ @-> returning (Print_status.t_view))
let get_status_string =
  foreign "gtk_print_operation_get_status_string" (t_typ @-> returning (string_opt))
let get_support_selection =
  foreign "gtk_print_operation_get_support_selection" (t_typ @-> returning (bool))
let is_finished =
  foreign "gtk_print_operation_is_finished" (t_typ @-> returning (bool))
let run self action parent =
  let run_raw =
    foreign "gtk_print_operation_run" (t_typ @-> Print_operation_action.t_view @-> Window.t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (Print_operation_result.t_view))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = run_raw self action parent err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_allow_async =
  foreign "gtk_print_operation_set_allow_async" (t_typ @-> bool @-> returning (void))
let set_current_page =
  foreign "gtk_print_operation_set_current_page" (t_typ @-> int32_t @-> returning (void))
let set_custom_tab_label =
  foreign "gtk_print_operation_set_custom_tab_label" (t_typ @-> string_opt @-> returning (void))
let set_default_page_setup =
  foreign "gtk_print_operation_set_default_page_setup" (t_typ @-> Page_setup.t_typ @-> returning (void))
let set_defer_drawing =
  foreign "gtk_print_operation_set_defer_drawing" (t_typ @-> returning (void))
let set_embed_page_setup =
  foreign "gtk_print_operation_set_embed_page_setup" (t_typ @-> bool @-> returning (void))
let set_export_filename =
  foreign "gtk_print_operation_set_export_filename" (t_typ @-> string @-> returning (void))
let set_has_selection =
  foreign "gtk_print_operation_set_has_selection" (t_typ @-> bool @-> returning (void))
let set_job_name =
  foreign "gtk_print_operation_set_job_name" (t_typ @-> string @-> returning (void))
let set_n_pages =
  foreign "gtk_print_operation_set_n_pages" (t_typ @-> int32_t @-> returning (void))
let set_print_settings =
  foreign "gtk_print_operation_set_print_settings" (t_typ @-> Print_settings.t_typ @-> returning (void))
let set_show_progress =
  foreign "gtk_print_operation_set_show_progress" (t_typ @-> bool @-> returning (void))
let set_support_selection =
  foreign "gtk_print_operation_set_support_selection" (t_typ @-> bool @-> returning (void))
let set_track_print_status =
  foreign "gtk_print_operation_set_track_print_status" (t_typ @-> bool @-> returning (void))
let set_unit =
  foreign "gtk_print_operation_set_unit" (t_typ @-> Unit.t_view @-> returning (void))
let set_use_full_page =
  foreign "gtk_print_operation_set_use_full_page" (t_typ @-> bool @-> returning (void))
