open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_invisible_new return type object not handled*)
(*Not implemented gtk_invisible_new_for_screen type object not implemented*)
(*Not implemented gtk_invisible_get_screen return type object not handled*)
(*Not implemented gtk_invisible_set_screen type object not implemented*)
