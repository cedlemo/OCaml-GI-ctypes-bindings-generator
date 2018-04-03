open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tree_store_newv type C Array type for Types.Array tag not implemented*)
let append self parent =
  let append_raw =
    foreign "gtk_tree_store_append" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = append_raw self parent iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let clear =
  foreign "gtk_tree_store_clear" (t_typ @-> returning (void))
let insert self parent position =
  let insert_raw =
    foreign "gtk_tree_store_insert" (t_typ @-> ptr_opt Tree_iter.t_typ @-> int32_t @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_raw self parent position iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let insert_after self parent sibling =
  let insert_after_raw =
    foreign "gtk_tree_store_insert_after" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_after_raw self parent sibling iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let insert_before self parent sibling =
  let insert_before_raw =
    foreign "gtk_tree_store_insert_before" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = insert_before_raw self parent sibling iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
(*Not implemented gtk_tree_store_insert_with_valuesv type C Array type for Types.Array tag not implemented*)
let is_ancestor =
  foreign "gtk_tree_store_is_ancestor" (t_typ @-> ptr Tree_iter.t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
let iter_depth =
  foreign "gtk_tree_store_iter_depth" (t_typ @-> ptr Tree_iter.t_typ @-> returning (int32_t))
let iter_is_valid =
  foreign "gtk_tree_store_iter_is_valid" (t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
let move_after =
  foreign "gtk_tree_store_move_after" (t_typ @-> ptr Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> returning (void))
let move_before =
  foreign "gtk_tree_store_move_before" (t_typ @-> ptr Tree_iter.t_typ @-> ptr_opt Tree_iter.t_typ @-> returning (void))
let prepend self parent =
  let prepend_raw =
    foreign "gtk_tree_store_prepend" (t_typ @-> ptr_opt Tree_iter.t_typ @-> ptr (Tree_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Tree_iter.t_typ (make Tree_iter.t_typ) in
  let ret = prepend_raw self parent iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let remove =
  foreign "gtk_tree_store_remove" (t_typ @-> ptr Tree_iter.t_typ @-> returning (bool))
(*Not implemented gtk_tree_store_set_column_types type C Array type for Types.Array tag not implemented*)
let set_value =
  foreign "gtk_tree_store_set_value" (t_typ @-> ptr Tree_iter.t_typ @-> int32_t @-> ptr Value.t_typ @-> returning (void))
(*Not implemented gtk_tree_store_set_valuesv type C Array type for Types.Array tag not implemented*)
let swap =
  foreign "gtk_tree_store_swap" (t_typ @-> ptr Tree_iter.t_typ @-> ptr Tree_iter.t_typ @-> returning (void))
