open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_recent_chooser_widget_new return type object not handled*)
(*Not implemented gtk_recent_chooser_widget_new_for_manager type object not implemented*)
