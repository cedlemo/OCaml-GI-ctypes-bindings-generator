open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_search_entry_new return type object not handled*)
(*Not implemented gtk_search_entry_handle_event type union not implemented*)
