open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_lock_button_new" (ptr_opt Permission.t_typ @-> returning (ptr Widget.t_typ))
let get_permission =
  foreign "gtk_lock_button_get_permission" (t_typ @-> returning (ptr Permission.t_typ))
let set_permission =
  foreign "gtk_lock_button_set_permission" (t_typ @-> ptr_opt Permission.t_typ @-> returning (void))
