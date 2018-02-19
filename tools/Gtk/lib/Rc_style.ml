open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_rc_style_new return type object not handled*)
(*Not implemented gtk_rc_style_copy return type object not handled*)
