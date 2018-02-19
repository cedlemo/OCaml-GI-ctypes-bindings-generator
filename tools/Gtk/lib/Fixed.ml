open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_fixed_new return type object not handled*)
(*Not implemented gtk_fixed_move type object not implemented*)
(*Not implemented gtk_fixed_put type object not implemented*)
