open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_overlay_new return type object not handled*)
(*Not implemented gtk_overlay_add_overlay type object not implemented*)
(*Not implemented gtk_overlay_get_overlay_pass_through type object not implemented*)
(*Not implemented gtk_overlay_reorder_overlay type object not implemented*)
(*Not implemented gtk_overlay_set_overlay_pass_through type object not implemented*)
