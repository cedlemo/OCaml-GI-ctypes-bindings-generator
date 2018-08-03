open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_renderer_progress_new" (void @-> returning (ptr Cell_renderer.t_typ))
