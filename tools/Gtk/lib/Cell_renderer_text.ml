open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_renderer_text_new return type object not handled*)
let set_fixed_height_from_font =
  foreign "gtk_cell_renderer_text_set_fixed_height_from_font" (ptr t_typ @-> int32_t @-> returning (void))
