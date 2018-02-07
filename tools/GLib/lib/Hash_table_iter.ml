open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Hash_table_iter"

let f_dummy1 = field t_typ "dummy1" (ptr void)
let f_dummy2 = field t_typ "dummy2" (ptr void)
let f_dummy3 = field t_typ "dummy3" (ptr void)
let f_dummy4 = field t_typ "dummy4" (int32_t)
let f_dummy5 = field t_typ "dummy5" (bool)
let f_dummy6 = field t_typ "dummy6" (ptr void)
let _ = seal t_typ

let init =
  foreign "g_hash_table_iter_init" (ptr t_typ @-> ptr Hash_table.t_typ @-> returning (void))
let next self =
  let key_ptr = allocate (ptr_opt void) None in
  let value_ptr = allocate (ptr_opt void) None in
  let next_raw =
    foreign "g_hash_table_iter_next" (ptr t_typ @-> ptr (ptr_opt void) @-> ptr (ptr_opt void) @-> returning bool)
  in
  let ret = next_raw self key_ptr value_ptr in
  let key = !@ key_ptr in
  let value = !@ value_ptr in
  (ret, key, value)
let remove =
  foreign "g_hash_table_iter_remove" (ptr t_typ @-> returning (void))
let replace =
  foreign "g_hash_table_iter_replace" (ptr t_typ @-> ptr_opt void @-> returning (void))
let steal =
  foreign "g_hash_table_iter_steal" (ptr t_typ @-> returning (void))
