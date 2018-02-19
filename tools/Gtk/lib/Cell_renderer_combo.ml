open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_renderer_combo_new return type object not handled*)
