open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_fixed_new" (void @-> returning (ptr Widget.t_typ))
let move =
  foreign "gtk_fixed_move" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))
let put =
  foreign "gtk_fixed_put" (t_typ @-> ptr Widget.t_typ @-> int32_t @-> int32_t @-> returning (void))
