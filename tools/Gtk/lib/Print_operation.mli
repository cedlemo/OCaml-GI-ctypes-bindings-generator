open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_print_operation_new return type object not handled*)
val cancel:
  t structure ptr -> unit
val draw_page_finish:
  t structure ptr -> unit
(*Not implemented gtk_print_operation_get_default_page_setup return type object not handled*)
val get_embed_page_setup:
  t structure ptr -> bool
val get_error:
  t structure ptr -> (unit, Error.t structure ptr option) result
val get_has_selection:
  t structure ptr -> bool
val get_n_pages_to_print:
  t structure ptr -> int32
(*Not implemented gtk_print_operation_get_print_settings return type object not handled*)
val get_status:
  t structure ptr -> Print_status.t
val get_status_string:
  t structure ptr -> string option
val get_support_selection:
  t structure ptr -> bool
val is_finished:
  t structure ptr -> bool
(*Not implemented gtk_print_operation_run type object not implemented*)
val set_allow_async:
  t structure ptr -> bool -> unit
val set_current_page:
  t structure ptr -> int32 -> unit
val set_custom_tab_label:
  t structure ptr -> string option -> unit
(*Not implemented gtk_print_operation_set_default_page_setup type object not implemented*)
val set_defer_drawing:
  t structure ptr -> unit
val set_embed_page_setup:
  t structure ptr -> bool -> unit
val set_export_filename:
  t structure ptr -> string -> unit
val set_has_selection:
  t structure ptr -> bool -> unit
val set_job_name:
  t structure ptr -> string -> unit
val set_n_pages:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_print_operation_set_print_settings type object not implemented*)
val set_show_progress:
  t structure ptr -> bool -> unit
val set_support_selection:
  t structure ptr -> bool -> unit
val set_track_print_status:
  t structure ptr -> bool -> unit
val set_unit:
  t structure ptr -> Unit.t -> unit
val set_use_full_page:
  t structure ptr -> bool -> unit
