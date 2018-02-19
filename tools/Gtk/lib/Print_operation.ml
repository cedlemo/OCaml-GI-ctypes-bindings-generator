open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_print_operation_new return type object not handled*)
let cancel =
  foreign "gtk_print_operation_cancel" (ptr t_typ @-> returning (void))
let draw_page_finish =
  foreign "gtk_print_operation_draw_page_finish" (ptr t_typ @-> returning (void))
(*Not implemented gtk_print_operation_get_default_page_setup return type object not handled*)
let get_embed_page_setup =
  foreign "gtk_print_operation_get_embed_page_setup" (ptr t_typ @-> returning (bool))
let get_error self =
  let get_error_raw =
    foreign "gtk_print_operation_get_error" (ptr t_typ@-> ptr (ptr_opt Error.t_typ) @-> returning (void))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let value = get_error_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok value
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let get_has_selection =
  foreign "gtk_print_operation_get_has_selection" (ptr t_typ @-> returning (bool))
let get_n_pages_to_print =
  foreign "gtk_print_operation_get_n_pages_to_print" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_print_operation_get_print_settings return type object not handled*)
let get_status =
  foreign "gtk_print_operation_get_status" (ptr t_typ @-> returning (Print_status.t_view))
let get_status_string =
  foreign "gtk_print_operation_get_status_string" (ptr t_typ @-> returning (string_opt))
let get_support_selection =
  foreign "gtk_print_operation_get_support_selection" (ptr t_typ @-> returning (bool))
let is_finished =
  foreign "gtk_print_operation_is_finished" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_print_operation_run type object not implemented*)
let set_allow_async =
  foreign "gtk_print_operation_set_allow_async" (ptr t_typ @-> bool @-> returning (void))
let set_current_page =
  foreign "gtk_print_operation_set_current_page" (ptr t_typ @-> int32_t @-> returning (void))
let set_custom_tab_label =
  foreign "gtk_print_operation_set_custom_tab_label" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_print_operation_set_default_page_setup type object not implemented*)
let set_defer_drawing =
  foreign "gtk_print_operation_set_defer_drawing" (ptr t_typ @-> returning (void))
let set_embed_page_setup =
  foreign "gtk_print_operation_set_embed_page_setup" (ptr t_typ @-> bool @-> returning (void))
let set_export_filename =
  foreign "gtk_print_operation_set_export_filename" (ptr t_typ @-> string @-> returning (void))
let set_has_selection =
  foreign "gtk_print_operation_set_has_selection" (ptr t_typ @-> bool @-> returning (void))
let set_job_name =
  foreign "gtk_print_operation_set_job_name" (ptr t_typ @-> string @-> returning (void))
let set_n_pages =
  foreign "gtk_print_operation_set_n_pages" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_print_operation_set_print_settings type object not implemented*)
let set_show_progress =
  foreign "gtk_print_operation_set_show_progress" (ptr t_typ @-> bool @-> returning (void))
let set_support_selection =
  foreign "gtk_print_operation_set_support_selection" (ptr t_typ @-> bool @-> returning (void))
let set_track_print_status =
  foreign "gtk_print_operation_set_track_print_status" (ptr t_typ @-> bool @-> returning (void))
let set_unit =
  foreign "gtk_print_operation_set_unit" (ptr t_typ @-> Unit.t_view @-> returning (void))
let set_use_full_page =
  foreign "gtk_print_operation_set_use_full_page" (ptr t_typ @-> bool @-> returning (void))
