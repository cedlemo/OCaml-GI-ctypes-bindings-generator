open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_stack_switcher_new" (void @-> returning (Widget.t_typ))
let get_stack =
  foreign "gtk_stack_switcher_get_stack" (t_typ @-> returning (Stack.t_typ))
let set_stack =
  foreign "gtk_stack_switcher_set_stack" (t_typ @-> Stack.t_typ @-> returning (void))
