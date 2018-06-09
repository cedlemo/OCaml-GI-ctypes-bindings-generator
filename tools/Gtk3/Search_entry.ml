open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_search_entry_new" (void @-> returning (Widget.t_typ))
(*Not implemented gtk_search_entry_handle_event type union not implemented*)
