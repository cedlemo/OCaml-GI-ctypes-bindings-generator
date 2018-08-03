open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_renderer_text_new" (void @-> returning (ptr Cell_renderer.t_typ))
let set_fixed_height_from_font =
  foreign "gtk_cell_renderer_text_set_fixed_height_from_font" (t_typ @-> int32_t @-> returning (void))
