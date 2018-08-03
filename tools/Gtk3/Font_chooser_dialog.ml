open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_font_chooser_dialog_new" (string_opt @-> ptr_opt Window.t_typ @-> returning (ptr Widget.t_typ))
