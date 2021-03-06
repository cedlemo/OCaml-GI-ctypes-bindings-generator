open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Hash_table"

let add =
  foreign "g_hash_table_add" (ptr t.t_typ @-> ptr_opt void @-> returning (bool))
let contains =
  foreign "g_hash_table_contains" (ptr t.t_typ @-> ptr_opt void @-> returning (bool))
let destroy =
  foreign "g_hash_table_destroy" (ptr t.t_typ @-> returning (void))
let insert =
  foreign "g_hash_table_insert" (ptr t.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (bool))
let lookup =
  foreign "g_hash_table_lookup" (ptr t.t_typ @-> ptr_opt void @-> returning (ptr_opt void))
let lookup_extended hash_table lookup_key =
  let lookup_extended_raw =
    foreign "g_hash_table_lookup_extended" (ptr t.t_typ @-> ptr_opt void @-> ptr (ptr_opt void) @-> ptr (ptr_opt void) @-> returning (bool))
  in
  let orig_key_ptr = allocate (ptr_opt void) None in
  let value_ptr = allocate (ptr_opt void) None in
  let ret = lookup_extended_raw hash_table lookup_key orig_key_ptr value_ptr in
  let orig_key = !@ orig_key_ptr in
  let value = !@ value_ptr in
  (ret, orig_key, value)
let remove =
  foreign "g_hash_table_remove" (ptr t.t_typ @-> ptr_opt void @-> returning (bool))
let remove_all =
  foreign "g_hash_table_remove_all" (ptr t.t_typ @-> returning (void))
let replace =
  foreign "g_hash_table_replace" (ptr t.t_typ @-> ptr_opt void @-> ptr_opt void @-> returning (bool))
let size =
  foreign "g_hash_table_size" (ptr t.t_typ @-> returning (uint32_t))
let steal =
  foreign "g_hash_table_steal" (ptr t.t_typ @-> ptr_opt void @-> returning (bool))
let steal_all =
  foreign "g_hash_table_steal_all" (ptr t.t_typ @-> returning (void))
let unref =
  foreign "g_hash_table_unref" (ptr t.t_typ @-> returning (void))
