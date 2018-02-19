open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_renderer_text_new return type object not handled*)
val set_fixed_height_from_font:
  t structure ptr -> int32 -> unit
