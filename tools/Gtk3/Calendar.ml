open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_calendar_new" (void @-> returning (Widget.t_typ))
let clear_marks =
  foreign "gtk_calendar_clear_marks" (t_typ @-> returning (void))
let get_date self =
  let get_date_raw =
    foreign "gtk_calendar_get_date" (t_typ @-> ptr (uint32_t) @-> ptr (uint32_t) @-> ptr (uint32_t) @-> returning (void))
  in
  let year_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let month_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let day_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = get_date_raw self year_ptr month_ptr day_ptr in
  let year = !@ year_ptr in
  let month = !@ month_ptr in
  let day = !@ day_ptr in
  (year, month, day)
let get_day_is_marked =
  foreign "gtk_calendar_get_day_is_marked" (t_typ @-> uint32_t @-> returning (bool))
let get_detail_height_rows =
  foreign "gtk_calendar_get_detail_height_rows" (t_typ @-> returning (int32_t))
let get_detail_width_chars =
  foreign "gtk_calendar_get_detail_width_chars" (t_typ @-> returning (int32_t))
let get_display_options =
  foreign "gtk_calendar_get_display_options" (t_typ @-> returning (Calendar_display_options.t_list_view))
let mark_day =
  foreign "gtk_calendar_mark_day" (t_typ @-> uint32_t @-> returning (void))
let select_day =
  foreign "gtk_calendar_select_day" (t_typ @-> uint32_t @-> returning (void))
let select_month =
  foreign "gtk_calendar_select_month" (t_typ @-> uint32_t @-> uint32_t @-> returning (void))
(*Not implemented gtk_calendar_set_detail_func type callback not implemented*)
let set_detail_height_rows =
  foreign "gtk_calendar_set_detail_height_rows" (t_typ @-> int32_t @-> returning (void))
let set_detail_width_chars =
  foreign "gtk_calendar_set_detail_width_chars" (t_typ @-> int32_t @-> returning (void))
let set_display_options =
  foreign "gtk_calendar_set_display_options" (t_typ @-> Calendar_display_options.t_list_view @-> returning (void))
let unmark_day =
  foreign "gtk_calendar_unmark_day" (t_typ @-> uint32_t @-> returning (void))
