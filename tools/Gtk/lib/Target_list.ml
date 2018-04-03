open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Target_list"

(*Not implemented gtk_target_list_new type C Array type for Types.Array tag not implemented*)
let add =
  foreign "gtk_target_list_add" (ptr t_typ @-> ptr Atom.t_typ @-> uint32_t @-> uint32_t @-> returning (void))
let add_image_targets =
  foreign "gtk_target_list_add_image_targets" (ptr t_typ @-> uint32_t @-> bool @-> returning (void))
let add_rich_text_targets =
  foreign "gtk_target_list_add_rich_text_targets" (ptr t_typ @-> uint32_t @-> bool @-> Text_buffer.t_typ @-> returning (void))
(*Not implemented gtk_target_list_add_table type C Array type for Types.Array tag not implemented*)
let add_text_targets =
  foreign "gtk_target_list_add_text_targets" (ptr t_typ @-> uint32_t @-> returning (void))
let add_uri_targets =
  foreign "gtk_target_list_add_uri_targets" (ptr t_typ @-> uint32_t @-> returning (void))
let find self target =
  let find_raw =
    foreign "gtk_target_list_find" (ptr t_typ @-> ptr Atom.t_typ @-> ptr (uint32_t) @-> returning (bool))
  in
  let info_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = find_raw self target info_ptr in
  let info = !@ info_ptr in
  (ret, info)
let incr_ref =
  foreign "gtk_target_list_ref" (ptr t_typ @-> returning (ptr t_typ))
let remove =
  foreign "gtk_target_list_remove" (ptr t_typ @-> ptr Atom.t_typ @-> returning (void))
let unref =
  foreign "gtk_target_list_unref" (ptr t_typ @-> returning (void))
