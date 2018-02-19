open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_color_selection_dialog_new return type object not handled*)
(*Not implemented gtk_color_selection_dialog_get_color_selection return type object not handled*)
