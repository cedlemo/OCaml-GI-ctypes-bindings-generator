open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_file_chooser_widget_new" (File_chooser_action.t_view @-> returning (ptr Widget.t_typ))
