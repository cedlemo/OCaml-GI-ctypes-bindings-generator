open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_color_chooser_dialog_new" (string_opt @-> Window.t_typ @-> returning (Widget.t_typ))
