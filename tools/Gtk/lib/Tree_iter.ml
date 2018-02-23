open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Tree_iter"

let f_stamp = field t_typ "stamp" (int32_t)
let f_user_data = field t_typ "user_data" (ptr void)
let f_user_data2 = field t_typ "user_data2" (ptr void)
let f_user_data3 = field t_typ "user_data3" (ptr void)
let _ = seal t_typ

let copy =
  foreign "gtk_tree_iter_copy" (t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_tree_iter_free" (t_typ @-> returning (void))
