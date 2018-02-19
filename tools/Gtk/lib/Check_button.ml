open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_check_button_new return type object not handled*)
(*Not implemented gtk_check_button_new_with_label return type object not handled*)
(*Not implemented gtk_check_button_new_with_mnemonic return type object not handled*)
