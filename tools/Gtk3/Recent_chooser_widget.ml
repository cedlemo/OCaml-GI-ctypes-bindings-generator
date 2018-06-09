open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_recent_chooser_widget_new" (void @-> returning (Widget.t_typ))
let create_for_manager =
  foreign "gtk_recent_chooser_widget_new_for_manager" (Recent_manager.t_typ @-> returning (Widget.t_typ))
