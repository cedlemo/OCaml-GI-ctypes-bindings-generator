open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_calendar_new return type object not handled*)
val clear_marks:
  t structure ptr -> unit
val get_date :
  t structure ptr -> (Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32)
val get_day_is_marked:
  t structure ptr -> Unsigned.uint32 -> bool
val get_detail_height_rows:
  t structure ptr -> int32
val get_detail_width_chars:
  t structure ptr -> int32
val get_display_options:
  t structure ptr -> Calendar_display_options.t_list
val mark_day:
  t structure ptr -> Unsigned.uint32 -> unit
val select_day:
  t structure ptr -> Unsigned.uint32 -> unit
val select_month:
  t structure ptr -> Unsigned.uint32 -> Unsigned.uint32 -> unit
(*Not implemented gtk_calendar_set_detail_func type callback not implemented*)
val set_detail_height_rows:
  t structure ptr -> int32 -> unit
val set_detail_width_chars:
  t structure ptr -> int32 -> unit
val set_display_options:
  t structure ptr -> Calendar_display_options.t_list -> unit
val unmark_day:
  t structure ptr -> Unsigned.uint32 -> unit
