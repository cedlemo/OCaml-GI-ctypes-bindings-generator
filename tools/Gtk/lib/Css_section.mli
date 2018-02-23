open Ctypes

type t
val t_typ : t structure typ

val get_end_line:
  t structure -> Unsigned.uint32
val get_end_position:
  t structure -> Unsigned.uint32
(*Not implemented gtk_css_section_get_file return type interface not handled*)
val get_parent:
  t structure -> t structure ptr option
val get_section_type:
  t structure -> Css_section_type.t
val get_start_line:
  t structure -> Unsigned.uint32
val get_start_position:
  t structure -> Unsigned.uint32
val incr_ref:
  t structure -> t structure ptr
val unref:
  t structure -> unit
