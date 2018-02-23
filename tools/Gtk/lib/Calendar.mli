open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val clear_marks:
  t -> unit
val get_date :
  t -> (Unsigned.uint32 * Unsigned.uint32 * Unsigned.uint32)
val get_day_is_marked:
  t -> Unsigned.uint32 -> bool
val get_detail_height_rows:
  t -> int32
val get_detail_width_chars:
  t -> int32
val get_display_options:
  t -> Calendar_display_options.t_list
val mark_day:
  t -> Unsigned.uint32 -> unit
val select_day:
  t -> Unsigned.uint32 -> unit
val select_month:
  t -> Unsigned.uint32 -> Unsigned.uint32 -> unit
(*Not implemented gtk_calendar_set_detail_func type callback not implemented*)
val set_detail_height_rows:
  t -> int32 -> unit
val set_detail_width_chars:
  t -> int32 -> unit
val set_display_options:
  t -> Calendar_display_options.t_list -> unit
val unmark_day:
  t -> Unsigned.uint32 -> unit
