open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_plug_new" (uint64_t @-> returning (ptr Widget.t_typ))
let create_for_display =
  foreign "gtk_plug_new_for_display" (ptr Display.t_typ @-> uint64_t @-> returning (ptr Widget.t_typ))
let construct =
  foreign "gtk_plug_construct" (t_typ @-> uint64_t @-> returning (void))
let construct_for_display =
  foreign "gtk_plug_construct_for_display" (t_typ @-> ptr Display.t_typ @-> uint64_t @-> returning (void))
let get_embedded =
  foreign "gtk_plug_get_embedded" (t_typ @-> returning (bool))
let get_id =
  foreign "gtk_plug_get_id" (t_typ @-> returning (uint64_t))
let get_socket_window =
  foreign "gtk_plug_get_socket_window" (t_typ @-> returning (ptr_opt Window.t_typ))
