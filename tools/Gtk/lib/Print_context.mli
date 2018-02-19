open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_print_context_create_pango_context return type object not handled*)
(*Not implemented gtk_print_context_create_pango_layout return type object not handled*)
val get_cairo_context:
  t structure ptr -> Context.t structure ptr
val get_dpi_x:
  t structure ptr -> float
val get_dpi_y:
  t structure ptr -> float
val get_hard_margins :
  t structure ptr -> (bool * float * float * float * float)
val get_height:
  t structure ptr -> float
(*Not implemented gtk_print_context_get_page_setup return type object not handled*)
(*Not implemented gtk_print_context_get_pango_fontmap return type object not handled*)
val get_width:
  t structure ptr -> float
val set_cairo_context:
  t structure ptr -> Context.t structure ptr -> float -> float -> unit
