open Ctypes

type t
val t_typ : t typ

val create_pango_context :
  t -> Context.t
val create_pango_layout :
  t -> Layout.t
val get_cairo_context :
  t -> Context.t structure ptr
val get_dpi_x :
  t -> float
val get_dpi_y :
  t -> float
val get_hard_margins :
  t -> (bool * float * float * float * float)
val get_height :
  t -> float
val get_page_setup :
  t -> Page_setup.t
val get_pango_fontmap :
  t -> Font_map.t
val get_width :
  t -> float
val set_cairo_context :
  t -> Context.t structure ptr -> float -> float -> unit
