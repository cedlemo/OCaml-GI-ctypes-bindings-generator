open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Target_entry"

let f_target = field t_typ "target" (string)
let f_flags = field t_typ "flags" (uint32_t)
let f_info = field t_typ "info" (uint32_t)
let _ = seal t_typ

let create =
  foreign "gtk_target_entry_new" (string @-> uint32_t @-> uint32_t @-> returning (ptr t_typ))
let copy =
  foreign "gtk_target_entry_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_target_entry_free" (ptr t_typ @-> returning (void))
