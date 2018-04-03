open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_list_store_newv type C Array type for Types.Array tag not implemented*)
let append self =
  let append_raw =
    foreign "gtk_list_store_append" (t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = append_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)let clear =
  foreign "gtk_list_store_clear" (t_typ @-> returning (void))
let insert self position =
  let insert_raw =
    foreign "gtk_list_store_insert" (t_typ @-> int32_t @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_raw self position iter_ptr in
  let iter = !@ iter_ptr in
  (iter)let insert_after self sibling =
  let insert_after_raw =
    foreign "gtk_list_store_insert_after" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_after_raw self sibling iter_ptr in
  let iter = !@ iter_ptr in
  (iter)let insert_before self sibling =
  let insert_before_raw =
    foreign "gtk_list_store_insert_before" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_before_raw self sibling iter_ptr in
  let iter = !@ iter_ptr in
  (iter)(*Not implemented gtk_list_store_insert_with_valuesv type C Array type for Types.Array tag not implemented*)
let iter_is_valid =
  foreign "gtk_list_store_iter_is_valid" (t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
let move_after =
  foreign "gtk_list_store_move_after" (t_typ @-> ptr Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> returning (void))
let move_before =
  foreign "gtk_list_store_move_before" (t_typ @-> ptr Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> returning (void))
let prepend self =
  let prepend_raw =
    foreign "gtk_list_store_prepend" (t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = prepend_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)let remove =
  foreign "gtk_list_store_remove" (t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
(*Not implemented gtk_list_store_reorder type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_list_store_set_column_types type C Array type for Types.Array tag not implemented*)
let set_value =
  foreign "gtk_list_store_set_value" (t_typ @-> ptr Tree_iter.t_typ @-> int32_t @-> ptr Value.t_typ @-> returning (void))
(*Not implemented gtk_list_store_set_valuesv type C Array type for Types.Array tag not implemented*)
let swap =
  foreign "gtk_list_store_swap" (t_typ @-> ptr Tree_iter.t_typ @-> ptr Tree_iter.t_typ @-> returning (void))
