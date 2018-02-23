open Ctypes

type t
val t_typ : t structure typ

val f_refcount: (Unsigned.uint32, t structure) field
val f_appearance: (Text_appearance.t structure, t structure) field
val f_justification: (Justification.t, t structure) field
val f_direction: (Text_direction.t, t structure) field
val f_font: (Font_description.t structure ptr, t structure) field
val f_font_scale: (float, t structure) field
val f_left_margin: (int32, t structure) field
val f_right_margin: (int32, t structure) field
val f_indent: (int32, t structure) field
val f_pixels_above_lines: (int32, t structure) field
val f_pixels_below_lines: (int32, t structure) field
val f_pixels_inside_wrap: (int32, t structure) field
val f_tabs: (Tab_array.t structure ptr, t structure) field
val f_wrap_mode: (Wrap_mode.t, t structure) field
val f_language: (Language.t structure ptr, t structure) field
val f_pg_bg_color: (Color.t structure ptr, t structure) field
val f_invisible: (Unsigned.uint32, t structure) field
val f_bg_full_height: (Unsigned.uint32, t structure) field
val f_editable: (Unsigned.uint32, t structure) field
val f_no_fallback: (Unsigned.uint32, t structure) field
val f_pg_bg_rgba: (RGBA.t structure ptr, t structure) field
val f_letter_spacing: (int32, t structure) field

val create:
  unit -> t structure ptr
val copy:
  t structure -> t structure ptr
val copy_values:
  t structure -> t structure ptr -> unit
val incr_ref:
  t structure -> t structure ptr
val unref:
  t structure -> unit
