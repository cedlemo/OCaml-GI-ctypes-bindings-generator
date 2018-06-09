open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val cancel :
  t -> unit
val draw_page_finish :
  t -> unit
val get_default_page_setup :
  t -> Page_setup.t
val get_embed_page_setup :
  t -> bool
val get_error :
  t -> (unit, Error.t structure ptr option) result
val get_has_selection :
  t -> bool
val get_n_pages_to_print :
  t -> int32
val get_print_settings :
  t -> Print_settings.t
val get_status :
  t -> Print_status.t
val get_status_string :
  t -> string option
val get_support_selection :
  t -> bool
val is_finished :
  t -> bool
val run :
  t -> Print_operation_action.t -> Window.t -> (Print_operation_result.t, Error.t structure ptr option) result
val set_allow_async :
  t -> bool -> unit
val set_current_page :
  t -> int32 -> unit
val set_custom_tab_label :
  t -> string option -> unit
val set_default_page_setup :
  t -> Page_setup.t -> unit
val set_defer_drawing :
  t -> unit
val set_embed_page_setup :
  t -> bool -> unit
val set_export_filename :
  t -> string -> unit
val set_has_selection :
  t -> bool -> unit
val set_job_name :
  t -> string -> unit
val set_n_pages :
  t -> int32 -> unit
val set_print_settings :
  t -> Print_settings.t -> unit
val set_show_progress :
  t -> bool -> unit
val set_support_selection :
  t -> bool -> unit
val set_track_print_status :
  t -> bool -> unit
val set_unit :
  t -> Unit.t -> unit
val set_use_full_page :
  t -> bool -> unit
